import 'dart:convert';
import 'package:drift/dart.dart';
import 'package:matumaini/core/database/tables.dart';
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/models/hymn.dart';
import 'package:matumaini/models/hymn_verse.dart';

class HymnRepository {
  final AppDatabase db;

  HymnRepository(this.db);

  Future<List<Hymn>> getAllHymns() async {
    final hymns = await db.select(db.hymns).get();
    return hymns.map(_toModel).toList();
  }

  Future<Hymn?> getHymnById(int id) async {
    final hymn = await (db.select(db.hymns)..where((h) => h.id.equals(id))).getSingleOrNull();
    return hymn != null ? _toModel(hymn) : null;
  }

  Future<Hymn?> getHymnByNumber(int number, int collectionId) async {
    final hymn = await (db.select(db.hymns)
      ..where((h) => h.hymnNumber.equals(number) & h.collectionId.equals(collectionId))
    ).getSingleOrNull();
    return hymn != null ? _toModel(hymn) : null;
  }

  Future<List<HymnVerse>> getVersesForHymn(int hymnId) async {
    final verses = await (db.select(db.hymnVerses)
      ..where((v) => v.hymnId.equals(hymnId))
      ..orderBy([(v) => OrderingTerm(expression: v.displayOrder)])
    ).get();
    return verses.map(_verseToModel).toList();
  }

  Future<List<Hymn>> searchHymns(String query) async {
    final results = await db.customSelect('''
      SELECT h.* FROM hymns h
      JOIN hymns_fts fts ON h.id = fts.hymn_id
      WHERE fts MATCH ?
      ORDER BY rank
      LIMIT 50
    ''', variables: [Variable(query)]).get();

    return results.map(_toModel).toList();
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

  List<String> _parseJsonList(String? jsonStr) {
    if (jsonStr == null || jsonStr.isEmpty) return [];
    try {
      final decoded = jsonDecode(jsonStr);
      if (decoded is List) return decoded.map((e) => e.toString()).toList();
    } catch (_) {}
    return [];
  }

  Hymn _toModel(HymnsData data) {
    return Hymn(
      id: data.id,
      hymnNumber: data.hymnNumber,
      title: data.title,
      firstLine: data.firstLine,
      tuneName: data.tuneName,
      meter: data.meter,
      composer: '',
      lyricist: '',
      scriptureRefs: data.scriptureRefs ?? '',
      occasions: _parseJsonList(data.occasions),
      emotionalTones: _parseJsonList(data.emotionalTones),
      tempoCategory: data.tempoCategory,
      tempoMarking: data.tempoMarking,
      difficulty: data.difficulty,
      voicing: data.voicing,
      copyrightStatus: data.copyrightStatus,
      yearComposed: data.yearComposed,
      yearPublishedSda: data.yearPublishedSda,
      hasMidi: data.hasMidi,
      hasChords: data.hasChords,
      midiAssetPath: data.midiAssetPath,
      dialect: data.dialect,
      sourceAttribution: data.sourceAttribution,
      isCommunityContributed: data.isCommunityContributed,
      useCount: data.useCount,
      lastUsed: data.lastUsed,
      createdAt: data.createdAt,
      updatedAt: data.updatedAt,
    );
  }

  HymnVerse _verseToModel(HymnVersesData data) {
    return HymnVerse(
      id: data.id,
      hymnId: data.hymnId,
      verseType: data.verseType,
      verseNumber: data.verseNumber,
      lyrics: data.lyrics,
      lyricsNormalized: data.lyricsNormalized,
      wordCount: data.wordCount,
      displayOrder: data.displayOrder,
      midiStartMs: data.midiStartMs,
      midiEndMs: data.midiEndMs,
    );
  }
}
