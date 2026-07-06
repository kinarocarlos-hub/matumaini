import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/core/providers/database_providers.dart';
import 'package:matumaini/core/database/database.dart';

class ProgramDetailScreen extends ConsumerWidget {
  final int programId;

  const ProgramDetailScreen({
    super.key,
    required this.programId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final programItemsAsync = ref.watch(streamProgramItemsProvider(programId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          'Program Details',
          style: AppTypography.headingLarge.copyWith(color: AppColors.gold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: AppColors.gold),
            onPressed: () {
              _showAddItemDialog(context, ref);
            },
          ),
        ],
      ),
      body: programItemsAsync.when(
        data: (items) {
          if (items.isEmpty) {
            return _buildEmptyState();
          }
          return _buildItemsList(context, items);
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
            Icons.list,
            size: 64,
            color: AppColors.gold.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No items yet',
            style: AppTypography.headingMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Add hymns, prayers, or announcements',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemsList(BuildContext context, List<ProgramItem> items) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          leading: CircleAvatar(
            backgroundColor: AppColors.gold.withOpacity(0.2),
            child: Text(
              '#${index + 1}',
              style: AppTypography.bodyMedium.copyWith(color: AppColors.gold),
            ),
          ),
          title: Text(
            item.customTitle ?? item.itemType,
            style: AppTypography.bodyLarge,
          ),
          subtitle: item.durationMinutes != null
              ? Text('${item.durationMinutes} min')
              : null,
          trailing: item.isComplete
              ? Icon(Icons.check_circle, color: AppColors.gold)
              : Icon(Icons.radio_button_unchecked, color: AppColors.textSecondary),
        );
      },
    );
  }

  void _showAddItemDialog(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    final notesController = TextEditingController();
    String selectedType = 'HYMN';

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: Text(
          'Add Program Item',
          style: AppTypography.headingMedium.copyWith(color: AppColors.gold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<String>(
                value: selectedType,
                decoration: const InputDecoration(
                  labelText: 'Type',
                  labelStyle: TextStyle(color: AppColors.textSecondary),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: 'HYMN', child: Text('Hymn')),
                  DropdownMenuItem(value: 'SCRIPTURE', child: Text('Scripture')),
                  DropdownMenuItem(value: 'PRAYER', child: Text('Prayer')),
                  DropdownMenuItem(value: 'ANNOUNCEMENT', child: Text('Announcement')),
                  DropdownMenuItem(value: 'SERMON', child: Text('Sermon')),
                  DropdownMenuItem(value: 'OFFERING', child: Text('Offering')),
                  DropdownMenuItem(value: 'CUSTOM', child: Text('Custom')),
                ],
                onChanged: (value) {
                  if (value != null) selectedType = value;
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: titleController,
                style: AppTypography.bodyMedium,
                decoration: const InputDecoration(
                  labelText: 'Title',
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
                final items = await ref.read(streamProgramItemsProvider(programId).future);
                await db.into(db.programItems).insert(
                  ProgramItemsCompanion.insert(
                    programId: programId,
                    displayOrder: items.length + 1,
                    itemType: selectedType,
                    customTitle: titleController.text,
                    notes: notesController.text.isNotEmpty ? Value(notesController.text) : const Value(null),
                    hymnId: const Value(null),
                    customContent: const Value(null),
                    durationMinutes: const Value(null),
                    isComplete: const Value(false),
                  ),
                );
                if (dialogContext.mounted) Navigator.pop(dialogContext);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.gold,
            ),
            child: const Text('Add', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
