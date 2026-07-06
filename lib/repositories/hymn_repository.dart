import 'dart:convert';
import 'package:drift/dart.dart';
import 'package:drift/drift.dart';
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/models/hymn_verse.dart';

class HymnRepository {
  final AppDatabase db;

  HymnRepository(this.db);

  Future<List<Hymn>> getAllHymns() async {
    final results = await db.customSelect('''
      SELECT id, collection_id as collectionId, hymn_number as hymnNumber,
             title, first_line as firstLine, tune_name as tuneName, meter,
             scripture_refs as scriptureRefs, has_midi as hasMidi,
             has_chords as hasChords, midi_asset_path as midiAssetPath,
             dialect, source_attribution as sourceAttribution,
             is_community_contributed as isCommunityContributed,
             use_count as useCount, last_used as lastUsed,
             created_at as createdAt, updated_at as updatedAt
      FROM hymns
      ORDER BY collection_id, hymn_number
    ''').get();

    return results.map((row) {
      final data = row.data;
      return Hymn(
        id: data['id'] as int,
        hymnNumber: data['hymnNumber'] as int?,
        title: data['title'] as String,
        firstLine: data['firstLine'] as String?,
        tuneName: data['tuneName'] as String?,
        meter: data['meter'] as String?,
        scriptureRefs: data['scriptureRefs'] as String? ?? '',
        occasions: const <String>[],
        emotionalTones: const <String>[],
        tempoCategory: 'MEDIUM',
        difficulty: 'CONGREGATIONAL',
        voicing: 'SATB',
        copyrightStatus: 'PUBLIC_DOMAIN',
        hasMidi: (data['hasMidi'] as int? ?? 0) == 1,
        hasChords: (data['hasChords'] as int? ?? 0) == 1,
        midiAssetPath: data['midiAssetPath'] as String?,
        dialect: data['dialect'] as String?,
        sourceAttribution: data['sourceAttribution'] as String?,
        isCommunityContributed: (data['isCommunityContributed'] as int? ?? 0) == 1,
        useCount: data['useCount'] as int? ?? 0,
        lastUsed: data['lastUsed'] as int?,
        createdAt: data['createdAt'] as int,
        updatedAt: data['updatedAt'] as int,
      );
    }).toList();
  }

  Future<Hymn?> getHymnById(int id) async {
    final result = await (db.customSelect('''
      SELECT id, collection_id as collectionId, hymn_number as hymnNumber,
             title, first_line as firstLine, tune_name as tuneName, meter,
             scripture_refs as scriptureRefs, has_midi as hasMidi,
             has_chords as hasChords, midi_asset_path as midiAssetPath,
             dialect, source_attribution as sourceAttribution,
             is_community_contributed as isCommunityContributed,
             use_count as useCount, last_used as lastUsed,
             created_at as createdAt, updated_at as updatedAt
      FROM hymns
      WHERE id = ?
    ''', variables: [Variable(id)])).getSingleOrNull();

    if (result == null) return null;
    final data = result.data;
    return Hymn(
      id: data['id'] as int,
      hymnNumber: data['hymnNumber'] as int?,
      title: data['title'] as String,
      firstLine: data['firstLine'] as String?,
      tuneName: data['tuneName'] as String?,
      meter: data['meter'] as String?,
      scriptureRefs: data['scriptureRefs'] as String? ?? '',
      occasions: const <String>[],
      emotionalTones: const <String>[],
      tempoCategory: 'MEDIUM',
      difficulty: 'CONGREGATIONAL',
      voicing: 'SATB',
      copyrightStatus: 'PUBLIC_DOMAIN',
      hasMidi: (data['hasMidi'] as int? ?? 0) == 1,
      hasChords: (data['hasChords'] as int? ?? 0) == 1,
      midiAssetPath: data['midiAssetPath'] as String?,
      dialect: data['dialect'] as String?,
      sourceAttribution: data['sourceAttribution'] as String?,
      isCommunityContributed: (data['isCommunityContributed'] as int? ?? 0) == 1,
      useCount: data['useCount'] as int? ?? 0,
      lastUsed: data['lastUsed'] as int?,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
    );
  }

  Future<Hymn?> getHymnByNumber(int number, int collectionId) async {
    final result = await (db.customSelect('''
      SELECT id, collection_id as collectionId, hymn_number as hymnNumber,
             title, first_line as firstLine, tune_name as tuneName, meter,
             scripture_refs as scriptureRefs, has_midi as hasMidi,
             has_chords as hasChords, midi_asset_path as midiAssetPath,
             dialect, source_attribution as sourceAttribution,
             is_community_contributed as isCommunityContributed,
             use_count as useCount, last_used as lastUsed,
             created_at as createdAt, updated_at as updatedAt
      FROM hymns
      WHERE hymn_number = ? AND collection_id = ?
    ''', variables: [Variable(number), Variable(collectionId)])).getSingleOrNull();

    if (result == null) return null;
    final data = result.data;
    return Hymn(
      id: data['id'] as int,
      hymnNumber: data['hymnNumber'] as int?,
      title: data['title'] as String,
      firstLine: data['firstLine'] as String?,
      tuneName: data['tuneName'] as String?,
      meter: data['meter'] as String?,
      scriptureRefs: data['scriptureRefs'] as String? ?? '',
      occasions: const <String>[],
      emotionalTones: const <String>[],
      tempoCategory: 'MEDIUM',
      difficulty: 'CONGREGATIONAL',
      voicing: 'SATB',
      copyrightStatus: 'PUBLIC_DOMAIN',
      hasMidi: (data['hasMidi'] as int? ?? 0) == 1,
      hasChords: (data['hasChords'] as int? ?? 0) == 1,
      midiAssetPath: data['midiAssetPath'] as String?,
      dialect: data['dialect'] as String?,
      sourceAttribution: data['sourceAttribution'] as String?,
      isCommunityContributed: (data['isCommunityContributed'] as int? ?? 0) == 1,
      useCount: data['useCount'] as int? ?? 0,
      lastUsed: data['lastUsed'] as int?,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
    );
  }

  Future<List<HymnVerse>> getVersesForHymn(int hymnId) async {
    final results = await db.customSelect('''
      SELECT id, hymn_id as hymnId, verse_type as verseType,
             verse_number as verseNumber, lyrics, lyrics_normalized as lyricsNormalized,
             word_count as wordCount, display_order as displayOrder,
             midi_start_ms as midiStartMs, midi_end_ms as midiEndMs
      FROM hymn_verses
      WHERE hymn_id = ?
      ORDER BY display_order
    ''', variables: [Variable(hymnId)]).get();

    return results.map((row) {
      final data = row.data;
      return HymnVerse(
        id: data['id'] as int,
        hymnId: data['hymnId'] as int,
        verseType: data['verseType'] as String? ?? 'VERSE',
        verseNumber: data['verseNumber'] as int?,
        lyrics: data['lyrics'] as String,
        lyricsNormalized: data['lyricsNormalized'] as String? ?? '',
        wordCount: data['wordCount'] as int?,
        displayOrder: data['displayOrder'] as int? ?? 0,
        midiStartMs: data['midiStartMs'] as int?,
        midiEndMs: data['midiEndMs'] as int?,
      );
    }).toList();
  }

  Future<List<Hymn>> searchHymns(String query) async {
    final results = await db.customSelect('''
      SELECT h.id, h.collection_id as collectionId, h.hymn_number as hymnNumber,
             h.title, h.first_line as firstLine, h.tune_name as tuneName, h.meter,
             h.scripture_refs as scriptureRefs,
             h.has_midi as hasMidi, h.has_chords as hasChords,
             h.midi_asset_path as midiAssetPath, h.dialect,
             h.source_attribution as sourceAttribution,
             h.is_community_contributed as isCommunityContributed,
             h.use_count as useCount, h.last_used as lastUsed,
             h.created_at as createdAt, h.updated_at as updatedAt
      FROM hymns h
      JOIN hymns_fts fts ON h.id = fts.hymn_id
      WHERE fts MATCH ?
      ORDER BY rank
      LIMIT 50
    ''', variables: [Variable(query)]).get();

    return results.map((row) {
      final data = row.data;
      return Hymn(
        id: data['id'] as int,
        hymnNumber: data['hymnNumber'] as int?,
        title: data['title'] as String,
        firstLine: data['firstLine'] as String?,
        tuneName: data['tuneName'] as String?,
        meter: data['meter'] as String?,
        scriptureRefs: data['scriptureRefs'] as String? ?? '',
        occasions: const <String>[],
        emotionalTones: const <String>[],
        tempoCategory: 'MEDIUM',
        difficulty: 'CONGREGATIONAL',
        voicing: 'SATB',
        copyrightStatus: 'PUBLIC_DOMAIN',
        hasMidi: (data['hasMidi'] as int? ?? 0) == 1,
        hasChords: (data['hasChords'] as int? ?? 0) == 1,
        midiAssetPath: data['midiAssetPath'] as String?,
        dialect: data['dialect'] as String?,
        sourceAttribution: data['sourceAttribution'] as String?,
        isCommunityContributed: (data['isCommunityContributed'] as int? ?? 0) == 1,
        useCount: data['useCount'] as int? ?? 0,
        lastUsed: data['lastUsed'] as int?,
        createdAt: data['createdAt'] as int,
        updatedAt: data['updatedAt'] as int,
      );
    }).toList();
  }

  Future<void> incrementUseCount(int hymnId) async {
    await db.customUpdate(
      'UPDATE hymns SET use_count = use_count + 1, last_used = ? WHERE id = ?',
      variables: [
        Variable(DateTime.now().millisecondsSinceEpoch ~/ 1000),
        Variable(hymnId),
      ],
    );
  }
}
