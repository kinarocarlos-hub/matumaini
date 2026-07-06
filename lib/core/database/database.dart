import 'dart:io';

import 'package:drift/dart.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  Collections,
  Hymns,
  HymnVerses,
  HymnCrossReferences,
  Topics,
  HymnTopics,
  SongEmbeddings,
  UserFavorites,
  FavoriteFolders,
  SearchHistory,
  WorshipPrograms,
  ProgramItems,
  UserSettings,
  HymnNotes,
  Persons,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_collection
        ON hymns(collection_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_number
        ON hymns(collection_id, hymn_number)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_tune
        ON hymns(tune_name)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_tempo
        ON hymns(tempo_category)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_difficulty
        ON hymns(difficulty)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_composer
        ON hymns(composer_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymns_lyricist
        ON hymns(lyricist_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_verses_hymn
        ON hymn_verses(hymn_id, display_order)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_verses_type
        ON hymn_verses(hymn_id, verse_type)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_persons_name
        ON persons(full_name_normalized)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_topics_parent
        ON topics(parent_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_embeddings_hymn
        ON song_embeddings(hymn_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_search_history_query
        ON search_history(searched_at DESC)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_program_items_program
        ON program_items(program_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymn_topics_hymn
        ON hymn_topics(hymn_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_hymn_topics_topic
        ON hymn_topics(topic_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_cross_refs_source
        ON hymn_cross_references(source_hymn_id)
      ''');

      await customStatement('''
        CREATE INDEX IF NOT EXISTS idx_cross_refs_target
        ON hymn_cross_references(target_hymn_id)
      ''');

      await customStatement('''
        CREATE VIRTUAL TABLE IF NOT EXISTS hymns_fts USING fts5(
          hymn_id UNINDEXED,
          title,
          first_line,
          all_verses_text,
          composer_name,
          lyricist_name,
          tune_name,
          scripture_refs_text,
          language_code UNINDEXED,
          tokenize='trigram'
        )
      ''');

      await customStatement('''
        CREATE VIRTUAL TABLE IF NOT EXISTS verses_fts USING fts5(
          verse_id UNINDEXED,
          hymn_id UNINDEXED,
          lyrics,
          lyrics_normalized,
          verse_type UNINDEXED,
          verse_number UNINDEXED,
          language_code UNINDEXED,
          tokenize='trigram'
        )
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_ai AFTER INSERT ON hymns BEGIN
          INSERT INTO hymns_fts (rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES (new.rowid, new.id, new.title, new.first_line, new.all_verses_text, '', '', new.tune_name, new.scripture_refs, '');
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_ad AFTER DELETE ON hymns BEGIN
          INSERT INTO hymns_fts (hymns_fts, rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES ('delete', old.rowid, old.id, old.title, old.first_line, old.all_verses_text, old.composer_name, old.lyricist_name, old.tune_name, old.scripture_refs, '');
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_bu BEFORE UPDATE ON hymns BEGIN
          INSERT INTO hymns_fts (hymns_fts, rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES ('delete', old.rowid, old.id, old.title, old.first_line, old.all_verses_text, old.composer_name, old.lyricist_name, old.tune_name, old.scripture_refs, '');
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_au AFTER UPDATE ON hymns BEGIN
          INSERT INTO hymns_fts (rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES (new.rowid, new.id, new.title, new.first_line, new.all_verses_text, new.composer_name, new.lyricist_name, new.tune_name, new.scripture_refs, '');
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymn_verses_ai AFTER INSERT ON hymn_verses BEGIN
          INSERT INTO verses_fts (rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
          VALUES (new.rowid, new.id, new.hymn_id, new.lyrics, new.lyrics_normalized, new.verse_type, new.verse_number, '');
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymn_verses_ad AFTER DELETE ON hymn_verses BEGIN
          INSERT INTO verses_fts (verses_fts, rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
          VALUES ('delete', old.rowid, old.id, old.hymn_id, old.lyrics, old.lyrics_normalized, old.verse_type, old.verse_number, '');
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymn_verses_bu BEFORE UPDATE ON hymn_verses BEGIN
          INSERT INTO verses_fts (rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
          VALUES (new.rowid, new.id, new.hymn_id, new.lyrics, new.lyrics_normalized, new.verse_type, new.verse_number, '');
        END
      ''');

      await customStatement('''
        CREATE VIRTUAL TABLE IF NOT EXISTS vss_hymns USING vss0(
          embedding(384)
        )
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_ai AFTER INSERT ON song_embeddings BEGIN
          INSERT INTO vss_hymns(rowid, embedding) VALUES (new.rowid, new.embedding);
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_ad AFTER DELETE ON song_embeddings BEGIN
          INSERT INTO vss_hymns(vss_hymns, rowid, embedding) VALUES ('delete', old.rowid, old.embedding);
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_au AFTER UPDATE ON song_embeddings BEGIN
          INSERT INTO vss_hymns(vss_hymns, rowid, embedding) VALUES ('delete', old.rowid, old.embedding);
        END
      ''');

      await customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_bu BEFORE UPDATE ON song_embeddings BEGIN
          INSERT INTO vss_hymns(rowid, embedding) VALUES (new.rowid, new.embedding);
        END
      ''');
    },
    onUpgrade: (Migrator m, int from, int to) async {
      if (from < 2) {
        await m.addColumn(m.hymns, hymns, embeddingId);
      }
      if (from < 3) {
        await customStatement('''
          CREATE VIRTUAL TABLE IF NOT EXISTS hymns_fts USING fts5(
            hymn_id UNINDEXED, title, first_line, all_verses_text,
            composer_name, lyricist_name, tune_name,
            scripture_refs_text, language_code UNINDEXED,
            tokenize='trigram'
          )
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymns_ai AFTER INSERT ON hymns BEGIN
            INSERT INTO hymns_fts(rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
            VALUES (new.rowid, new.id, new.title, new.first_line, new.all_verses_text, new.composer_name, new.lyricist_name, new.tune_name, new.scripture_refs, '');
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymns_ad AFTER DELETE ON hymns BEGIN
            INSERT INTO hymns_fts(hymns_fts, rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
            VALUES ('delete', old.rowid, old.id, old.title, old.first_line, old.all_verses_text, old.composer_name, old.lyricist_name, old.tune_name, old.scripture_refs, '');
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymns_bu BEFORE UPDATE ON hymns BEGIN
            INSERT INTO hymns_fts(hymns_fts, rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
            VALUES ('delete', old.rowid, old.id, old.title, old.first_line, old.all_verses_text, old.composer_name, old.lyricist_name, old.tune_name, old.scripture_refs, '');
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymns_au AFTER UPDATE ON hymns BEGIN
            INSERT INTO hymns_fts(rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
            VALUES (new.rowid, new.id, new.title, new.first_line, new.all_verses_text, new.composer_name, new.lyricist_name, new.tune_name, new.scripture_refs, '');
          END
        ''');
      }
      if (from < 4) {
        await customStatement('''
          CREATE VIRTUAL TABLE IF NOT EXISTS verses_fts USING fts5(
            verse_id UNINDEXED, hymn_id UNINDEXED, lyrics,
            lyrics_normalized, verse_type UNINDEXED, verse_number UNINDEXED,
            language_code UNINDEXED, tokenize='trigram'
          )
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymn_verses_ai AFTER INSERT ON hymn_verses BEGIN
            INSERT INTO verses_fts(rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
            VALUES (new.rowid, new.id, new.hymn_id, new.lyrics, new.lyrics_normalized, new.verse_type, new.verse_number, '');
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymn_verses_ad AFTER DELETE ON hymn_verses BEGIN
            INSERT INTO verses_fts(verses_fts, rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
            VALUES ('delete', old.rowid, old.id, old.hymn_id, old.lyrics, old.lyrics_normalized, old.verse_type, old.verse_number, '');
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS hymn_verses_bu BEFORE UPDATE ON hymn_verses BEGIN
            INSERT INTO verses_fts(rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
            VALUES (new.rowid, new.id, new.hymn_id, new.lyrics, new.lyrics_normalized, new.verse_type, new.verse_number, '');
          END
        ''');
      }
      if (from < 5) {
        await customStatement('''
          CREATE VIRTUAL TABLE IF NOT EXISTS vss_hymns USING vss0(embedding(384))
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS embeddings_ai AFTER INSERT ON song_embeddings BEGIN
            INSERT INTO vss_hymns(rowid, embedding) VALUES (new.rowid, new.embedding);
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS embeddings_ad AFTER DELETE ON song_embeddings BEGIN
            INSERT INTO vss_hymns(vss_hymns, rowid, embedding) VALUES ('delete', old.rowid, old.embedding);
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS embeddings_au AFTER UPDATE ON song_embeddings BEGIN
            INSERT INTO vss_hymns(vss_hymns, rowid, embedding) VALUES ('delete', old.rowid, old.embedding);
          END
        ''');
        await customStatement('''
          CREATE TRIGGER IF NOT EXISTS embeddings_bu BEFORE UPDATE ON song_embeddings BEGIN
            INSERT INTO vss_hymns(rowid, embedding) VALUES (new.rowid, new.embedding);
          END
        ''');
      }
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'matumaini.sqlite'));
    return NativeDatabase(file);
  });
}
