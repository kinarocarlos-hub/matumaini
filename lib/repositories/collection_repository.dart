import 'package:drift/dart.dart';
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/models/collection.dart';

class CollectionRepository {
  final AppDatabase db;

  CollectionRepository(this.db);

  Future<List<Collection>> getAllCollections() async {
    final collections = await (db.select(db.collections)
      ..orderBy([(c) => OrderingTerm(expression: c.displayOrder)])
    ).get();
    return collections.map(_toModel).toList();
  }

  Future<Collection?> getCollectionByCode(String code) async {
    final collection = await (db.select(db.collections)
      ..where((c) => c.code.equals(code))
    ).getSingleOrNull();
    return collection != null ? _toModel(collection) : null;
  }

  Collection _toModel(CollectionsData data) {
    return Collection(
      id: data.id,
      code: data.code,
      name: data.name,
      nameNative: data.nameNative,
      languageCode: data.languageCode,
      languageNameEnglish: data.languageNameEnglish,
      languageNameNative: data.languageNameNative,
      fontFamily: data.fontFamily,
      specialCharacters: data.specialCharacters,
      tier: data.tier,
      totalSongs: data.totalSongs,
      isBundled: data.isBundled,
      requiresPremium: data.requiresPremium,
      downloadSizeMb: data.downloadSizeMb,
      isDownloaded: data.isDownloaded,
      sourceOrganization: data.sourceOrganization,
      licenseType: data.licenseType,
      licenseExpiry: data.licenseExpiry,
      displayOrder: data.displayOrder,
    );
  }
}
