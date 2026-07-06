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
    await _seedCollections();
    await _seedEnglishHymns();
    await _seedSwahiliHymns();
    print('Database seeding complete.');
  }

  Future<void> _seedCollections() async {
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

    for (final collection in collections) {
      await db.into(db.collections).insert(
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
    }
  }

  Future<void> _seedEnglishHymns() async {
    final jsonString = await rootBundle.loadString('assets/data/english_hymns.json');
    final data = jsonDecode(jsonString) as Map<String, dynamic>;
    final hymns = data['hymns'] as List<dynamic>;

    final batch = db.batch(() {});
    var inserted = 0;

    for (final hymn in hymns) {
      final map = hymn as Map<String, dynamic>;
      final collectionId = map['data_quality'] == 2 ? 1 : 1; // All in SDA 1985 collection for now

      batch.insert(db.hymns, HymnsCompanion.insert(
        collectionId: collectionId,
        hymnNumber: Value(map['hymn_number'] as int?),
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
      ));

      inserted++;
      if (inserted % 100 == 0) {
        await batch.commit();
        print('Inserted $inserted English hymns...');
      }
    }

    await batch.commit();
    print('Total English hymns inserted: $inserted');
  }

  Future<void> _seedSwahiliHymns() async {
    final jsonString = await rootBundle.loadString('assets/data/swahili_hymns.json');
    final data = jsonDecode(jsonString) as Map<String, dynamic>;
    final hymns = data['hymns'] as List<dynamic>;

    final batch = db.batch(() {});
    var inserted = 0;

    for (final hymn in hymns) {
      final map = hymn as Map<String, dynamic>;

      batch.insert(db.hymns, HymnsCompanion.insert(
        collectionId: 2, // Swahili collection
        hymnNumber: Value(map['hymn_number'] as int?),
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
      ));

      inserted++;
      if (inserted % 50 == 0) {
        await batch.commit();
        print('Inserted $inserted Swahili hymns...');
      }
    }

    await batch.commit();
    print('Total Swahili hymns inserted: $inserted');
  }
}
