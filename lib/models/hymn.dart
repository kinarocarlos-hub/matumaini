import 'package:equatable/equatable.dart';

class Hymn extends Equatable {
  final int id;
  final int? hymnNumber;
  final String title;
  final String? firstLine;
  final String? tuneName;
  final String? meter;
  final String? composer;
  final String? lyricist;
  final String? scriptureRefs;
  final List<String> occasions;
  final List<String> emotionalTones;
  final String tempoCategory;
  final String? tempoMarking;
  final String difficulty;
  final String voicing;
  final String copyrightStatus;
  final int? yearComposed;
  final int? yearPublishedSda;
  final bool hasMidi;
  final bool hasChords;
  final String? midiAssetPath;
  final String? dialect;
  final String? sourceAttribution;
  final bool isCommunityContributed;
  final int useCount;
  final int? lastUsed;
  final int createdAt;
  final int updatedAt;

  const Hymn({
    required this.id,
    this.hymnNumber,
    required this.title,
    this.firstLine,
    this.tuneName,
    this.meter,
    this.composer,
    this.lyricist,
    this.scriptureRefs,
    this.occasions = const [],
    this.emotionalTones = const [],
    this.tempoCategory = 'MEDIUM',
    this.tempoMarking,
    this.difficulty = 'CONGREGATIONAL',
    this.voicing = 'SATB',
    this.copyrightStatus = 'PUBLIC_DOMAIN',
    this.yearComposed,
    this.yearPublishedSda,
    this.hasMidi = false,
    this.hasChords = false,
    this.midiAssetPath,
    this.dialect,
    this.sourceAttribution,
    this.isCommunityContributed = false,
    this.useCount = 0,
    this.lastUsed,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id, hymnNumber, title, firstLine, tuneName, meter,
    composer, lyricist, scriptureRefs, occasions, emotionalTones,
    tempoCategory, tempoMarking, difficulty, voicing,
    copyrightStatus, yearComposed, yearPublishedSda,
    hasMidi, hasChords, midiAssetPath, dialect,
    sourceAttribution, isCommunityContributed,
    useCount, lastUsed, createdAt, updatedAt,
  ];
}
