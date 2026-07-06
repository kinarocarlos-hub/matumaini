import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/core/providers/app_providers.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/screens/reader/reader_screen.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchResults = ref.watch(hymnSearchProvider(_searchQuery));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: TextField(
          controller: _searchController,
          style: AppTypography.bodyLarge,
          decoration: InputDecoration(
            hintText: 'Search hymns by number, title, or text...',
            hintStyle: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search, color: AppColors.gold),
            suffixIcon: _searchQuery.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, color: AppColors.textSecondary),
                    onPressed: () {
                      _searchController.clear();
                      setState(() {
                        _searchQuery = '';
                      });
                    },
                  )
                : null,
          ),
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
        ),
      ),
      body: searchResults.when(
        data: (hymns) {
          if (_searchQuery.isEmpty) {
            return _buildEmptyState();
          }
          if (hymns.isEmpty) {
            return _buildNoResultsState();
          }
          return _buildSearchResults(hymns);
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
            Icons.search,
            size: 64,
            color: AppColors.gold.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'Search for hymns',
            style: AppTypography.headingMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Enter hymn number, title, or lyrics text',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoResultsState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: 64,
            color: AppColors.gold.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No results found',
            style: AppTypography.headingMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Try a different search term',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(List<Hymn> hymns) {
    return ListView.builder(
      itemCount: hymns.length,
      itemBuilder: (context, index) {
        final hymn = hymns[index];
        return ListTile(
          title: Text(
            hymn.title,
            style: AppTypography.bodyLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hymn.firstLine != null && hymn.firstLine!.isNotEmpty)
                Text(
                  hymn.firstLine!,
                  style: AppTypography.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              if (hymn.tuneName != null && hymn.tuneName!.isNotEmpty)
                Text(
                  'Tune: ${hymn.tuneName}',
                  style: AppTypography.bodySmall,
                ),
            ],
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
