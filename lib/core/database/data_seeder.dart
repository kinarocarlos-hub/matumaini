import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:drift/dart.dart';
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/core/database/tables.dart';

class DataSeeder {
  final AppDatabase db;

  DataSeeder(this.db);

  Future<bool> isDatabaseEmpty() async {
    final count = await db.customSelect('SELECT COUNT(*) as count FROM hymns').getSingle();
    return count.data['count'] == 0;
  }

  Future<void> seedIfEmpty() async {
    if (!await isDatabaseEmpty()) {
      print('Database already populated, skipping seed.');
      return;
    }

    print('Seeding database...');
    final hymnNumberToId = await _seedCollectionsAndHymns();
    await _seedEnglishVerses(hymnNumberToId);
    print('Database seeding complete.');
  }

  Future<Map<int, int>> _seedCollectionsAndHymns() async {
    final collections = [
      {
        'code': 'en_sda_1985',
        'name': 'SDA Hymnal 1985',
        'languageCode': 'en',
        'languageNameEnglish': 'English',
        'languageNameNative': 'English',
        'tier': 1,
        'totalSongs': 952,
        'isBundled': true,
        'requiresPremium': false,
        'sourceOrganization': 'Seventh-day Adventist Church',
        'licenseType': 'PUBLIC_DOMAIN',
        'displayOrder': 1,
      },
      {
        'code': 'sw_nyimbo_za_kristo',
        'name': 'Nyimbo za Kristo',
        'languageCode': 'sw',
        'languageNameEnglish': 'Swahili',
        'languageNameNative': 'Kiswahili',
        'tier': 1,
        'totalSongs': 271,
        'isBundled': true,
        'requiresPremium': false,
        'sourceOrganization': 'SDA East Africa Division',
        'licenseType': 'PUBLIC_DOMAIN',
        'displayOrder': 2,
      },
    ];

    // Insert collections and build code -> id map
    final Map<String, int> collectionCodeToId = {};
    for (final collection in collections) {
      final id = await db.into(db.collections).insert(
        CollectionsCompanion.insert(
          code: collection['code'] as String,
          name: collection['name'] as String,
          nameNative: const Value(null),
          languageCode: collection['languageCode'] as String,
          languageNameEnglish: collection['languageNameEnglish'] as String,
          languageNameNative: collection['languageNameNative'] as String,
          fontFamily: const Value('lora'),
          specialCharacters: const Value(null),
          tier: collection['tier'] as int,
          totalSongs: collection['totalSongs'] as int,
          isBundled: collection['isBundled'] as bool,
          requiresPremium: collection['requiresPremium'] as bool,
          downloadSizeMb: const Value(null),
          isDownloaded: const Value(false),
          sourceOrganization: Value(collection['sourceOrganization'] as String?),
          licenseType: collection['licenseType'] as String,
          licenseExpiry: const Value(null),
          displayOrder: collection['displayOrder'] as int,
          createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        ),
      );
      collectionCodeToId[collection['code'] as String] = id;
    }

    final int enCollectionId = collectionCodeToId['en_sda_1985'] ?? 1;
    final int swCollectionId = collectionCodeToId['sw_nyimbo_za_kristo'] ?? 2;

    // Seed English hymns
    final Map<int, int> hymnNumberToId = {};
    final enJson = await rootBundle.loadString('assets/data/english_hymns.json');
    final enData = jsonDecode(enJson) as Map<String, dynamic>;
    final enHymns = enData['hymns'] as List<dynamic>;

    var inserted = 0;
    for (final hymn in enHymns) {
      final map = hymn as Map<String, dynamic>;
      final hymnNumber = map['hymn_number'] as int;
      final id = await db.into(db.hymns).insert(
        HymnsCompanion.insert(
          collectionId: enCollectionId,
          hymnNumber: Value(hymnNumber),
          title: map['title'] as String,
          titleNormalized: (map['title'] as String).toLowerCase(),
          firstLine: Value(map['first_line'] as String?),
          firstLineNormalized: Value(map['first_line'] != null ? (map['first_line'] as String).toLowerCase() : null),
          tuneName: Value(map['tune_name'] as String?),
          meter: Value(map['meter'] as String?),
          scriptureRefs: Value(map['scripture_ref'] as String?),
          occasions: const Value('["GENERAL"]'),
          tempoCategory: const Value('MEDIUM'),
          difficulty: const Value('CONGREGATIONAL'),
          voicing: const Value('SATB'),
          copyrightStatus: const Value('PUBLIC_DOMAIN'),
          createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        ),
      );
      hymnNumberToId[hymnNumber] = id;
      inserted++;
      if (inserted % 100 == 0) {
        print('  Inserted $inserted English hymns...');
      }
    }
    print('  Total English hymns inserted: $inserted');

    // Seed Swahili hymns
    final swJson = await rootBundle.loadString('assets/data/swahili_hymns.json');
    final swData = jsonDecode(swJson) as Map<String, dynamic>;
    final swHymns = swData['hymns'] as List<dynamic>;
    inserted = 0;
    for (final hymn in swHymns) {
      final map = hymn as Map<String, dynamic>;
      final hymnNumber = map['hymn_number'] as int;
      await db.into(db.hymns).insert(
        HymnsCompanion.insert(
          collectionId: swCollectionId,
          hymnNumber: Value(hymnNumber),
          title: map['title'] as String,
          titleNormalized: (map['title'] as String).toLowerCase(),
          firstLine: Value(map['first_line'] as String?),
          firstLineNormalized: Value(map['first_line'] != null ? (map['first_line'] as String).toLowerCase() : null),
          tuneName: Value(map['tune_name'] as String?),
          scriptureRefs: const Value(null),
          occasions: const Value('["GENERAL"]'),
          tempoCategory: const Value('MEDIUM'),
          difficulty: const Value('CONGREGATIONAL'),
          voicing: const Value('SATB'),
          copyrightStatus: const Value('PUBLIC_DOMAIN'),
          createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        ),
      );
      hymnNumberToId[hymnNumber] = id;
      inserted++;
      if (inserted % 50 == 0) {
        print('  Inserted $inserted Swahili hymns...');
      }
    }
    print('  Total Swahili hymns inserted: $inserted');

    return hymnNumberToId;
  }

  Future<void> _seedEnglishVerses(Map<int, int> hymnNumberToId) async {
    final jsonString = await rootBundle.loadString('assets/data/english_verses.json');
    final data = jsonDecode(jsonString) as Map<String, dynamic>;
    final verses = data['verses'] as List<dynamic>;

    var inserted = 0;
    for (final verse in verses) {
      final map = verse as Map<String, dynamic>;
      final hymnNumber = map['hymn_number'] as int;
      final hymnId = hymnNumberToId[hymnNumber];
      if (hymnId == null) {
        continue;
      }

      await db.into(db.hymnVerses).insert(
        HymnVersesCompanion.insert(
          hymnId: hymnId,
          verseType: map['verse_type'] as String,
          verseNumber: Value(map['verse_number'] as int?),
          lyrics: map['lyrics'] as String,
          lyricsNormalized: (map['lyrics_normalized'] as String?) ?? '',
          displayOrder: (map['display_order'] as int?) ?? 0,
        ),
      );

      inserted++;
      if (inserted % 500 == 0) {
        print('  Inserted $inserted verses...');
      }
    }
    print('  Total English verses inserted: $inserted');
  }
}
