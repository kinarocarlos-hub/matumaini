import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/core/providers/app_providers.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/models/collection.dart';
import 'package:matumaini/screens/search/search_screen.dart';
import 'package:matumaini/screens/reader/reader_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionsAsync = ref.watch(collectionsProvider);
    final hymnsAsync = ref.watch(hymnsProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          'Matumaini',
          style: AppTypography.headingLarge.copyWith(
            color: AppColors.gold,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.gold),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(collectionsProvider);
          ref.invalidate(hymnsProvider);
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Quick Stats
              hymnsAsync.when(
                data: (hymns) => _buildStatsCard(context, hymns.length),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Text('Error: $error'),
              ),
              const SizedBox(height: 24),

              // Collections
              const Text(
                'Collections',
                style: AppTypography.headingMedium,
              ),
              const SizedBox(height: 12),
              collectionsAsync.when(
                data: (collections) => _buildCollectionsList(context, collections),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Text('Error: $error'),
              ),
              const SizedBox(height: 24),

              // Recent Hymns
              const Text(
                'Recent Hymns',
                style: AppTypography.headingMedium,
              ),
              const SizedBox(height: 12),
              hymnsAsync.when(
                data: (hymns) => _buildRecentHymns(context, hymns),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Text('Error: $error'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsCard(BuildContext context, int hymnCount) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.gold.withOpacity(0.2), AppColors.surface],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _StatItem(
            label: 'Hymns',
            value: hymnCount.toString(),
            icon: Icons.music_note,
          ),
          _StatItem(
            label: 'Collections',
            value: '3',
            icon: Icons.library_music,
          ),
          _StatItem(
            label: 'Languages',
            value: '2',
            icon: Icons.language,
          ),
        ],
      ),
    );
  }

  Widget _buildCollectionsList(BuildContext context, List<Collection> collections) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        itemBuilder: (context, index) {
          final collection = collections[index];
          return _CollectionCard(collection: collection);
        },
      ),
    );
  }

  Widget _buildRecentHymns(BuildContext context, List<Hymn> hymns) {
    final recent = hymns.where((h) => h.lastUsed != null).toList()
      ..sort((a, b) => (b.lastUsed ?? 0).compareTo(a.lastUsed ?? 0));
    
    if (recent.isEmpty) {
      return const Text(
        'No recent hymns yet. Start exploring!',
        style: TextStyle(color: AppColors.textSecondary),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recent.take(10).length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final hymn = recent[index];
        return ListTile(
          title: Text(
            hymn.title,
            style: AppTypography.bodyLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            hymn.firstLine ?? '',
            style: AppTypography.bodyMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(
            '#${hymn.hymnNumber ?? ''}',
            style: AppTypography.bodyMedium.copyWith(color: AppColors.gold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReaderScreen(hymnId: hymn.id),
              ),
            );
          },
        );
      },
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _StatItem({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: AppColors.gold, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: AppTypography.headingMedium.copyWith(color: AppColors.gold),
        ),
        Text(
          label,
          style: AppTypography.bodySmall,
        ),
      ],
    );
  }
}

class _CollectionCard extends StatelessWidget {
  final Collection collection;

  const _CollectionCard({required this.collection});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gold.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.library_music,
            color: AppColors.gold,
            size: 40,
          ),
          const SizedBox(height: 8),
          Text(
            collection.name,
            style: AppTypography.bodyMedium,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            '${collection.totalSongs} hymns',
            style: AppTypography.bodySmall,
          ),
        ],
      ),
    );
  }
}
