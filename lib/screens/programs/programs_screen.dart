import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/core/providers/app_providers.dart';
import 'package:matumaini/core/providers/database_providers.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:matumaini/screens/programs/program_detail_screen.dart';

class ProgramsScreen extends ConsumerWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final programsAsync = ref.watch(programsProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          'Worship Programs',
          style: AppTypography.headingLarge.copyWith(color: AppColors.gold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: AppColors.gold),
            onPressed: () {
              _showCreateProgramDialog(context, ref);
            },
          ),
        ],
      ),
      body: programsAsync.when(
        data: (programs) {
          if (programs.isEmpty) {
            return _buildEmptyState();
          }
          return _buildProgramsList(context, ref, programs);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text(
            'Error: $error',
            style: AppTypography.bodyMedium,
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.event,
            size: 64,
            color: AppColors.gold.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No worship programs yet',
            style: AppTypography.headingMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Create a program to plan your worship service',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgramsList(BuildContext context, WidgetRef ref, List<Map<String, dynamic>> programs) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: programs.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final program = programs[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          title: Text(
            program['title'] ?? 'Untitled Program',
            style: AppTypography.bodyLarge,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (program['date'] != null)
                Text(
                  'Date: ${DateTime.fromMillisecondsSinceEpoch((program['date'] as int) * 1000).toString().split(' ')[0]}',
                  style: AppTypography.bodyMedium,
                ),
              if (program['churchName'] != null && (program['churchName'] as String).isNotEmpty)
                Text(
                  program['churchName'] as String,
                  style: AppTypography.bodyMedium,
                ),
            ],
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: AppColors.gold,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProgramDetailScreen(programId: program['id'] as int),
              ),
            );
          },
        );
      },
    );
  }

  void _showCreateProgramDialog(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    final churchController = TextEditingController();
    final notesController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: Text(
          'New Worship Program',
          style: AppTypography.headingMedium.copyWith(color: AppColors.gold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                style: AppTypography.bodyMedium,
                decoration: const InputDecoration(
                  labelText: 'Program Title',
                  labelStyle: TextStyle(color: AppColors.textSecondary),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: churchController,
                style: AppTypography.bodyMedium,
                decoration: const InputDecoration(
                  labelText: 'Church Name (optional)',
                  labelStyle: TextStyle(color: AppColors.textSecondary),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: notesController,
                style: AppTypography.bodyMedium,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Notes (optional)',
                  labelStyle: TextStyle(color: AppColors.textSecondary),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold, width: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel', style: TextStyle(color: AppColors.textSecondary)),
          ),
          ElevatedButton(
            onPressed: () async {
              if (titleController.text.isNotEmpty) {
                final db = ref.read(databaseProvider);
                final variables = <Variable>[
                  Variable(titleController.text),
                  Variable(churchController.text.isNotEmpty ? churchController.text : null),
                  Variable(notesController.text.isNotEmpty ? notesController.text : null),
                  Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
                  Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
                  Variable(null),
                  Variable(null),
                  Variable(0),
                ];
                await db.customInsert('''
                  INSERT INTO worship_programs (title, church_name, notes, created_at, updated_at, date, service_type, is_template)
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                ''', variables: variables);
                if (dialogContext.mounted) Navigator.pop(dialogContext);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.gold,
            ),
            child: const Text('Create', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
