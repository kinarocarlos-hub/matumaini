import 'package:drift/drift.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/models/collection.dart';

class CollectionRepository {
  final AppDatabase db;

  CollectionRepository(this.db);

  Future<List<Collection>> getAllCollections() async {
    final results = await db.customSelect('''
      SELECT id, code, name, name_native as nameNative, language_code as languageCode,
             language_name_english as languageNameEnglish, language_name_native as languageNameNative,
             font_family as fontFamily, special_characters as specialCharacters, tier,
             total_songs as totalSongs, is_bundled as isBundled, requires_premium as requiresPremium,
             download_size_mb as downloadSizeMb, is_downloaded as isDownloaded,
             source_organization as sourceOrganization, license_type as licenseType,
             license_expiry as licenseExpiry, display_order as displayOrder
      FROM collections
      ORDER BY display_order
    ''');

    return results.map((row) => _toModel(row)).toList();
  }

  Future<Collection?> getCollectionByCode(String code) async {
    final data = await db.customSelectOne('''
      SELECT id, code, name, name_native as nameNative, language_code as languageCode,
             language_name_english as languageNameEnglish, language_name_native as languageNameNative,
             font_family as fontFamily, special_characters as specialCharacters, tier,
             total_songs as totalSongs, is_bundled as isBundled, requires_premium as requiresPremium,
             download_size_mb as downloadSizeMb, is_downloaded as isDownloaded,
             source_organization as sourceOrganization, license_type as licenseType,
             license_expiry as licenseExpiry, display_order as displayOrder
      FROM collections
      WHERE code = ?
    ''', variables: [Variable(code)]);

    if (data == null) return null;
    return _toModel(data);
  }

  Collection _toModel(Map<String, dynamic> data) {
    return Collection(
      id: data['id'] as int,
      code: data['code'] as String,
      name: data['name'] as String,
      nameNative: data['nameNative'] as String?,
      languageCode: data['languageCode'] as String,
      languageNameEnglish: data['languageNameEnglish'] as String,
      languageNameNative: data['languageNameNative'] as String,
      fontFamily: data['fontFamily'] as String? ?? 'lora',
      specialCharacters: data['specialCharacters'] as String?,
      tier: data['tier'] as int,
      totalSongs: data['totalSongs'] as int? ?? 0,
      isBundled: (data['isBundled'] as int? ?? 0) == 1,
      requiresPremium: (data['requiresPremium'] as int? ?? 0) == 1,
      downloadSizeMb: (data['downloadSizeMb'] as double?) ??
          ((data['downloadSizeMb'] as int?)?.toDouble()),
      isDownloaded: (data['isDownloaded'] as int? ?? 0) == 1,
      sourceOrganization: data['sourceOrganization'] as String?,
      licenseType: data['licenseType'] as String? ?? 'PENDING',
      licenseExpiry: data['licenseExpiry'] as int?,
      displayOrder: data['displayOrder'] as int? ?? 0,
    );
  }
}
