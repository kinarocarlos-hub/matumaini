import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/core/providers/database_providers.dart';
import 'package:matumaini/repositories/hymn_repository.dart';
import 'package:matumaini/repositories/collection_repository.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/models/collection.dart';

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

final hymnDetailProvider = FutureProvider.family<Hymn, int>((ref, hymnId) async {
  final repo = ref.watch(hymnRepositoryProvider);
  return repo.getHymnById(hymnId);
});

final hymnVersesProvider = FutureProvider.family<List<HymnVerse>, int>((ref, hymnId) async {
  final repo = ref.watch(hymnRepositoryProvider);
  return repo.getVersesForHymn(hymnId);
});
