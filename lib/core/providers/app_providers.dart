import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/providers/database_providers.dart';
import 'package:matumaini/repositories/hymn_repository.dart';
import 'package:matumaini/repositories/collection_repository.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/models/collection.dart';
import 'package:matumaini/models/hymn_verse.dart';
import 'package:drift/drift.dart';

final hymnRepositoryProvider = Provider<HymnRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return HymnRepository(db);
});

final collectionRepositoryProvider = Provider<CollectionRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return CollectionRepository(db);
});

final collectionsProvider = FutureProvider<List<Collection>>((ref) async {
  final repo = ref.watch(collectionRepositoryProvider);
  return repo.getAllCollections();
});

final hymnsProvider = FutureProvider<List<Hymn>>((ref) async {
  final repo = ref.watch(hymnRepositoryProvider);
  return repo.getAllHymns();
});

final hymnSearchProvider = FutureProvider.family<List<Hymn>, String>((ref, query) async {
  final repo = ref.watch(hymnRepositoryProvider);
  if (query.isEmpty) return [];
  return repo.searchHymns(query);
});

final hymnDetailProvider = FutureProvider.family<Hymn?, int>((ref, hymnId) async {
  final repo = ref.watch(hymnRepositoryProvider);
  return repo.getHymnById(hymnId);
});

final hymnVersesProvider = FutureProvider.family<List<HymnVerse>, int>((ref, hymnId) async {
  final repo = ref.watch(hymnRepositoryProvider);
  return repo.getVersesForHymn(hymnId);
});

final programsProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final db = ref.watch(databaseProvider);
  final results = await db.customSelect('''
    SELECT id, title, date, church_name as churchName, service_type as serviceType,
           created_at as createdAt, is_template as isTemplate
    FROM worship_programs
    ORDER BY date DESC
  ''');
  return results;
});

final programItemsProvider = FutureProvider.family<List<Map<String, dynamic>>, int>((ref, programId) async {
  final db = ref.watch(databaseProvider);
  final results = await db.customSelect('''
    SELECT id, program_id as programId, display_order as displayOrder, item_type as itemType,
           hymn_id as hymnId, custom_title as customTitle, custom_content as customContent,
           duration_minutes as durationMinutes, notes, is_complete as isComplete
    FROM program_items
    WHERE program_id = ?
    ORDER BY display_order
  ''', variables: [Variable(programId)]);
  return results;
});
