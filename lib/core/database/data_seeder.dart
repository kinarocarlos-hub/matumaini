import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:drift/drift.dart';
import 'package:matumaini/core/database/database.dart';

class DataSeeder {
  final AppDatabase db;

  DataSeeder(this.db);

  Future<bool> isDatabaseEmpty() async {
    final count = await db.customSelectOne('SELECT COUNT(*) as count FROM hymns');
    return (count?['count'] as int) == 0;
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
    final int enCollectionId = await db.customInsert('''
      INSERT INTO collections (code, name, language_code, language_name_english, language_name_native,
                               tier, total_songs, is_bundled, requires_premium, source_organization,
                               license_type, display_order, created_at, updated_at)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', variables: [
      const Variable('en_sda_1985'),
      const Variable('SDA Hymnal 1985'),
      const Variable('en'),
      const Variable('English'),
      const Variable('English'),
      const Variable(1),
      const Variable(952),
      const Variable(1),
      const Variable(0),
      const Variable('Seventh-day Adventist Church'),
      const Variable('PUBLIC_DOMAIN'),
      const Variable(1),
      Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
    ]);

    final int swCollectionId = await db.customInsert('''
      INSERT INTO collections (code, name, language_code, language_name_english, language_name_native,
                               tier, total_songs, is_bundled, requires_premium, source_organization,
                               license_type, display_order, created_at, updated_at)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', variables: [
      const Variable('sw_nyimbo_za_kristo'),
      const Variable('Nyimbo za Kristo'),
      const Variable('sw'),
      const Variable('Swahili'),
      const Variable('Kiswahili'),
      const Variable(1),
      const Variable(271),
      const Variable(1),
      const Variable(0),
      const Variable('SDA East Africa Division'),
      const Variable('PUBLIC_DOMAIN'),
      const Variable(2),
      Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
    ]);

    final Map<int, int> hymnNumberToId = {};

    final enJson = await rootBundle.loadString('assets/data/english_hymns.json');
    final enData = jsonDecode(enJson) as Map<String, dynamic>;
    final enHymns = enData['hymns'] as List<dynamic>;

    var inserted = 0;
    for (final hymn in enHymns) {
      final map = hymn as Map<String, dynamic>;
      final hymnNumber = map['hymn_number'] as int;
      final id = await db.customInsert('''
        INSERT INTO hymns (collection_id, hymn_number, title, title_normalized, first_line, first_line_normalized,
                           tune_name, meter, scripture_refs, occasions, tempo_category, difficulty, voicing,
                           copyright_status, created_at, updated_at)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      ''', variables: [
        Variable(enCollectionId),
        Variable(hymnNumber),
        Variable(map['title'] as String),
        Variable((map['title'] as String).toLowerCase()),
        Variable(map['first_line'] as String?),
        Variable(((map['first_line'] as String?) ?? '').toLowerCase()),
        Variable(map['tune_name'] as String?),
        Variable(map['meter'] as String?),
        Variable(map['scripture_ref'] as String?),
        const Variable('["GENERAL"]'),
        const Variable('MEDIUM'),
        const Variable('CONGREGATIONAL'),
        const Variable('SATB'),
        const Variable('PUBLIC_DOMAIN'),
        Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
        Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      ]);
      hymnNumberToId[hymnNumber] = id;
      inserted++;
      if (inserted % 100 == 0) {
        print('  Inserted $inserted English hymns...');
      }
    }
    print('  Total English hymns inserted: $inserted');

    final swJson = await rootBundle.loadString('assets/data/swahili_hymns.json');
    final swData = jsonDecode(swJson) as Map<String, dynamic>;
    final swHymns = swData['hymns'] as List<dynamic>;
    inserted = 0;
    for (final hymn in swHymns) {
      final map = hymn as Map<String, dynamic>;
      final hymnNumber = map['hymn_number'] as int;
      final id = await db.customInsert('''
        INSERT INTO hymns (collection_id, hymn_number, title, title_normalized, first_line, first_line_normalized,
                           scripture_refs, occasions, tempo_category, difficulty, voicing, copyright_status,
                           created_at, updated_at)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      ''', variables: [
        Variable(swCollectionId),
        Variable(hymnNumber),
        Variable(map['title'] as String),
        Variable((map['title'] as String).toLowerCase()),
        Variable(map['first_line'] as String?),
        Variable(((map['first_line'] as String?) ?? '').toLowerCase()),
        const Variable(null),
        const Variable('["GENERAL"]'),
        const Variable('MEDIUM'),
        const Variable('CONGREGATIONAL'),
        const Variable('SATB'),
        const Variable('PUBLIC_DOMAIN'),
        Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
        Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      ]);
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
      if (hymnId == null) continue;

      await db.customInsert('''
        INSERT INTO hymn_verses (hymn_id, verse_type, verse_number, lyrics, lyrics_normalized, display_order)
        VALUES (?, ?, ?, ?, ?, ?)
      ''', variables: [
        Variable(hymnId),
        Variable(map['verse_type'] as String),
        Variable(map['verse_number'] as int?),
        Variable(map['lyrics'] as String),
        Variable((map['lyrics_normalized'] as String?) ?? ''),
        Variable((map['display_order'] as int?) ?? 0),
      ]);

      inserted++;
      if (inserted % 500 == 0) {
        print('  Inserted $inserted verses...');
      }
    }
    print('  Total English verses inserted: $inserted');
  }
}
