import 'dart:io';

import 'package:drift/dart.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class AppDatabase extends LazyDatabase {
  AppDatabase();

  @override
  LazyDatabaseOpenResult open() {
    return LazyDatabaseOpenResult(NativeDatabase(_openConnection()));
  }

  Future<void> onCreate() async {
    final connection = _openConnection();
    final db = connection.executor;

    await db.runInTransaction(() async {
      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS collections (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          code TEXT UNIQUE NOT NULL,
          name TEXT NOT NULL,
          name_native TEXT,
          language_code TEXT NOT NULL,
          language_name_english TEXT NOT NULL,
          language_name_native TEXT NOT NULL,
          font_family TEXT NOT NULL DEFAULT 'lora',
          special_characters TEXT,
          tier INTEGER NOT NULL,
          total_songs INTEGER NOT NULL DEFAULT 0,
          is_bundled INTEGER NOT NULL DEFAULT 0,
          requires_premium INTEGER NOT NULL DEFAULT 0,
          download_size_mb REAL,
          is_downloaded INTEGER NOT NULL DEFAULT 0,
          source_organization TEXT,
          license_type TEXT NOT NULL DEFAULT 'PENDING',
          license_expiry INTEGER,
          display_order INTEGER NOT NULL DEFAULT 0,
          created_at INTEGER NOT NULL,
          updated_at INTEGER NOT NULL
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS hymns (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          collection_id INTEGER NOT NULL REFERENCES collections(id),
          hymn_number INTEGER,
          title TEXT NOT NULL,
          title_normalized TEXT NOT NULL,
          first_line TEXT,
          first_line_normalized TEXT,
          tune_name TEXT,
          meter TEXT,
          time_signature TEXT,
          key_signature TEXT,
          bpm_default INTEGER,
          composer_id INTEGER REFERENCES persons(id),
          lyricist_id INTEGER REFERENCES persons(id),
          year_composed INTEGER,
          year_published_sda INTEGER,
          scripture_refs TEXT,
          occasions TEXT NOT NULL DEFAULT '["GENERAL"]',
          emotional_tones TEXT,
          tempo_category TEXT NOT NULL DEFAULT 'MEDIUM',
          tempo_marking TEXT,
          difficulty TEXT NOT NULL DEFAULT 'CONGREGATIONAL',
          voicing TEXT NOT NULL DEFAULT 'SATB',
          copyright_status TEXT NOT NULL DEFAULT 'PUBLIC_DOMAIN',
          copyright_owner TEXT,
          midi_asset_path TEXT,
          has_midi INTEGER NOT NULL DEFAULT 0,
          has_chords INTEGER NOT NULL DEFAULT 0,
          chord_data TEXT,
          is_red_letter_special INTEGER NOT NULL DEFAULT 0,
          dialect TEXT,
          source_attribution TEXT,
          is_community_contributed INTEGER NOT NULL DEFAULT 0,
          contributor_id INTEGER,
          embedding_id INTEGER REFERENCES song_embeddings(id),
          created_at INTEGER NOT NULL,
          updated_at INTEGER NOT NULL,
          use_count INTEGER NOT NULL DEFAULT 0,
          last_used INTEGER
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS hymn_verses (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          verse_type TEXT NOT NULL,
          verse_number INTEGER,
          lyrics TEXT NOT NULL,
          lyrics_normalized TEXT NOT NULL,
          word_count INTEGER,
          display_order INTEGER NOT NULL,
          midi_start_ms INTEGER,
          midi_end_ms INTEGER
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS hymn_cross_references (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          source_hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          target_hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          relationship TEXT NOT NULL,
          confidence REAL NOT NULL DEFAULT 1.0
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS topics (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          name_swahili TEXT,
          parent_id INTEGER REFERENCES topics(id),
          display_order INTEGER
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS hymn_topics (
          hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          topic_id INTEGER NOT NULL REFERENCES topics(id),
          PRIMARY KEY (hymn_id, topic_id)
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS song_embeddings (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          embedding BLOB NOT NULL,
          model_version TEXT NOT NULL,
          generated_at INTEGER NOT NULL
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS user_favorites (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          folder_id INTEGER REFERENCES favorite_folders(id),
          added_at INTEGER NOT NULL,
          personal_note TEXT,
          display_order INTEGER
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS favorite_folders (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          color TEXT,
          icon TEXT,
          created_at INTEGER NOT NULL,
          display_order INTEGER NOT NULL DEFAULT 0
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS search_history (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          query TEXT NOT NULL,
          search_type TEXT NOT NULL,
          filters_json TEXT,
          result_count INTEGER,
          searched_at INTEGER NOT NULL,
          is_saved INTEGER NOT NULL DEFAULT 0,
          saved_name TEXT
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS worship_programs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT NOT NULL,
          date INTEGER,
          church_name TEXT,
          service_type TEXT,
          notes TEXT,
          created_at INTEGER NOT NULL,
          updated_at INTEGER NOT NULL,
          is_template INTEGER NOT NULL DEFAULT 0
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS program_items (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          program_id INTEGER NOT NULL REFERENCES worship_programs(id),
          display_order INTEGER NOT NULL,
          item_type TEXT NOT NULL,
          hymn_id INTEGER REFERENCES hymns(id),
          custom_title TEXT,
          custom_content TEXT,
          duration_minutes INTEGER,
          notes TEXT,
          is_complete INTEGER NOT NULL DEFAULT 0
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS user_settings (
          id INTEGER PRIMARY KEY CHECK (id = 1),
          theme TEXT NOT NULL DEFAULT 'DEEP_SPACE',
          accent_color TEXT NOT NULL DEFAULT '#D4AF37',
          font_size INTEGER NOT NULL DEFAULT 18,
          font_family TEXT NOT NULL DEFAULT 'lora',
          line_spacing TEXT NOT NULL DEFAULT 'NORMAL',
          reader_mode TEXT NOT NULL DEFAULT 'READING',
          show_verse_labels INTEGER NOT NULL DEFAULT 1,
          show_tune_name INTEGER NOT NULL DEFAULT 1,
          show_meter INTEGER NOT NULL DEFAULT 0,
          show_composer INTEGER NOT NULL DEFAULT 1,
          show_scripture_ref INTEGER NOT NULL DEFAULT 1,
          show_chords INTEGER NOT NULL DEFAULT 0,
          highlight_current_line INTEGER NOT NULL DEFAULT 1,
          midi_instrument TEXT NOT NULL DEFAULT 'ORGAN',
          midi_tempo_multiplier REAL NOT NULL DEFAULT 1.0,
          midi_transpose INTEGER NOT NULL DEFAULT 0,
          midi_repeat_mode TEXT NOT NULL DEFAULT 'NONE',
          midi_count_in INTEGER NOT NULL DEFAULT 0,
          midi_verse_by_verse INTEGER NOT NULL DEFAULT 0,
          auto_scroll INTEGER NOT NULL DEFAULT 0,
          background_playback INTEGER NOT NULL DEFAULT 1,
          default_search_mode TEXT NOT NULL DEFAULT 'TEXT',
          search_language_filter TEXT NOT NULL DEFAULT 'ALL',
          search_collection_filter TEXT NOT NULL DEFAULT 'ALL',
          saved_filters_json TEXT,
          active_collection_ids TEXT NOT NULL DEFAULT '[1,2]',
          display_language TEXT NOT NULL DEFAULT 'en',
          show_intro_animation INTEGER NOT NULL DEFAULT 1,
          reduce_motion INTEGER NOT NULL DEFAULT 0,
          premium_status TEXT NOT NULL DEFAULT 'FREE',
          premium_expiry INTEGER,
          cloud_sync_enabled INTEGER NOT NULL DEFAULT 0,
          analytics_enabled INTEGER NOT NULL DEFAULT 0
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS hymn_notes (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          hymn_id INTEGER NOT NULL REFERENCES hymns(id),
          content TEXT NOT NULL,
          created_at INTEGER NOT NULL,
          updated_at INTEGER NOT NULL
        )
      ''');

      await db.customStatement('''
        CREATE TABLE IF NOT EXISTS persons (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          full_name TEXT NOT NULL,
          full_name_normalized TEXT NOT NULL,
          birth_year INTEGER,
          death_year INTEGER,
          nationality TEXT,
          biography_short TEXT,
          is_sda INTEGER NOT NULL DEFAULT 0
        )
      ''');

      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_collection ON hymns(collection_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_number ON hymns(collection_id, hymn_number)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_title ON hymns(title_normalized)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_tune ON hymns(tune_name)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_tempo ON hymns(tempo_category)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_difficulty ON hymns(difficulty)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_composer ON hymns(composer_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymns_lyricist ON hymns(lyricist_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_verses_hymn ON hymn_verses(hymn_id, display_order)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_verses_type ON hymn_verses(hymn_id, verse_type)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_persons_name ON persons(full_name_normalized)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_topics_parent ON topics(parent_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_embeddings_hymn ON song_embeddings(hymn_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_search_history_query ON search_history(searched_at DESC)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_program_items_program ON program_items(program_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymn_topics_hymn ON hymn_topics(hymn_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_hymn_topics_topic ON hymn_topics(topic_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_cross_refs_source ON hymn_cross_references(source_hymn_id)');
      await db.customStatement('CREATE INDEX IF NOT EXISTS idx_cross_refs_target ON hymn_cross_references(target_hymn_id)');

      await db.customStatement('''
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

      await db.customStatement('''
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

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_ai AFTER INSERT ON hymns BEGIN
          INSERT INTO hymns_fts (rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES (new.rowid, new.id, new.title, new.first_line, new.all_verses_text, '', '', new.tune_name, new.scripture_refs, '');
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_ad AFTER DELETE ON hymns BEGIN
          INSERT INTO hymns_fts (hymns_fts, rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES ('delete', old.rowid, old.id, old.title, old.first_line, old.all_verses_text, old.composer_name, old.lyricist_name, old.tune_name, old.scripture_refs, '');
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_bu BEFORE UPDATE ON hymns BEGIN
          INSERT INTO hymns_fts (hymns_fts, rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES ('delete', old.rowid, old.id, old.title, old.first_line, old.all_verses_text, old.composer_name, old.lyricist_name, old.tune_name, old.scripture_refs, '');
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymns_au AFTER UPDATE ON hymns BEGIN
          INSERT INTO hymns_fts (rowid, hymn_id, title, first_line, all_verses_text, composer_name, lyricist_name, tune_name, scripture_refs_text, language_code)
          VALUES (new.rowid, new.id, new.title, new.first_line, new.all_verses_text, new.composer_name, new.lyricist_name, new.tune_name, new.scripture_refs, '');
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymn_verses_ai AFTER INSERT ON hymn_verses BEGIN
          INSERT INTO verses_fts (rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
          VALUES (new.rowid, new.id, new.hymn_id, new.lyrics, new.lyrics_normalized, new.verse_type, new.verse_number, '');
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymn_verses_ad AFTER DELETE ON hymn_verses BEGIN
          INSERT INTO verses_fts (verses_fts, rowid, verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
          VALUES ('delete', old.rowid, old.id, old.hymn_id, old.lyrics, old.lyrics_normalized, old.verse_type, old.verse_number, '');
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS hymn_verses_bu BEFORE UPDATE ON hymn_verses BEGIN
          INSERT INTO verses_fts (verse_id, hymn_id, lyrics, lyrics_normalized, verse_type, verse_number, language_code)
          VALUES (new.id, new.hymn_id, new.lyrics, new.lyrics_normalized, new.verse_type, new.verse_number, '');
        END
      ''');

      await db.customStatement('''
        CREATE VIRTUAL TABLE IF NOT EXISTS vss_hymns USING vss0(embedding(384))
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_ai AFTER INSERT ON song_embeddings BEGIN
          INSERT INTO vss_hymns(rowid, embedding) VALUES (new.rowid, new.embedding);
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_ad AFTER DELETE ON song_embeddings BEGIN
          INSERT INTO vss_hymns(vss_hymns, rowid, embedding) VALUES ('delete', old.rowid, old.embedding);
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_au AFTER UPDATE ON song_embeddings BEGIN
          INSERT INTO vss_hymns(vss_hymns, rowid, embedding) VALUES ('delete', old.rowid, old.embedding);
        END
      ''');

      await db.customStatement('''
        CREATE TRIGGER IF NOT EXISTS embeddings_bu BEFORE UPDATE ON song_embeddings BEGIN
          INSERT INTO vss_hymns(rowid, embedding) VALUES (new.rowid, new.embedding);
        END
      ''');
    });
  }

  File _openConnection() {
    return File(p.join(
      getApplicationDocumentsDirectory().path,
      'matumaini.sqlite',
    ));
  }
}
