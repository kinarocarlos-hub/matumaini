import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/core/providers/app_providers.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/models/hymn_verse.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  final int hymnId;

  const ReaderScreen({
    super.key,
    required this.hymnId,
  });

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    final hymnAsync = ref.watch(hymnDetailProvider(widget.hymnId));
    
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          'Hymn Reader',
          style: AppTypography.headingLarge.copyWith(color: AppColors.gold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: AppColors.gold),
            onPressed: () {
              // Share functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: AppColors.gold),
            onPressed: () {
              // Favorite functionality
            },
          ),
        ],
      ),
      body: hymnAsync.when(
        data: (hymn) {
          if (hymn == null) {
            return const Center(child: Text('Hymn not found'));
          }
          return FutureBuilder<List<HymnVerse>>(
            future: ref.read(hymnRepositoryProvider).getVersesForHymn(widget.hymnId),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              
              final verses = snapshot.data ?? [];
              return _buildHymnContent(hymn, verses);
            },
          );
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

  Widget _buildHymnContent(Hymn hymn, List<HymnVerse> verses) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hymn number and title
          Center(
            child: Column(
              children: [
                if (hymn.hymnNumber != null)
                  Text(
                    '#${hymn.hymnNumber}',
                    style: AppTypography.headingLarge.copyWith(
                      color: AppColors.gold,
                      fontSize: 48,
                    ),
                  ),
                const SizedBox(height: 16),
                Text(
                  hymn.title,
                  style: AppTypography.headingLarge.copyWith(
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (hymn.firstLine != null && hymn.firstLine!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    hymn.firstLine!,
                    style: AppTypography.bodyMedium.copyWith(
                      fontStyle: FontStyle.italic,
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                if (hymn.tuneName != null && hymn.tuneName!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Tune: ${hymn.tuneName}',
                    style: AppTypography.bodySmall,
                  ),
                ],
                if (hymn.meter != null && hymn.meter!.isNotEmpty) ...[
                  Text(
                    'Meter: ${hymn.meter}',
                    style: AppTypography.bodySmall,
                  ),
                ],
                if (hymn.scriptureRefs != null && hymn.scriptureRefs!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    hymn.scriptureRefs!,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.gold,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
          const Divider(height: 32, color: AppColors.gold),
          
          // Verses
          if (verses.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  'No verses available for this hymn.',
                  style: AppTypography.bodyMedium,
                ),
              ),
            )
          else
            ...verses.map((verse) => _buildVerse(verse)),
        ],
      ),
    );
  }

  Widget _buildVerse(HymnVerse verse) {
    final isChorus = verse.verseType.toUpperCase() == 'CHORUS';
    
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isChorus 
            ? AppColors.gold.withOpacity(0.1) 
            : AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isChorus 
              ? AppColors.gold.withOpacity(0.3) 
              : AppColors.gold.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (verse.verseNumber != null)
            Text(
              isChorus ? 'CHORUS' : 'VERSE ${verse.verseNumber}',
              style: AppTypography.bodySmall.copyWith(
                color: AppColors.gold,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          if (isChorus) const SizedBox(height: 8),
          Text(
            verse.lyrics,
            style: AppTypography.bodyLarge.copyWith(
              fontStyle: isChorus ? FontStyle.italic : FontStyle.normal,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
