import 'package:equatable/equatable.dart';

class HymnVerse extends Equatable {
  final int id;
  final int hymnId;
  final String verseType;
  final int? verseNumber;
  final String lyrics;
  final String lyricsNormalized;
  final int? wordCount;
  final int displayOrder;
  final int? midiStartMs;
  final int? midiEndMs;

  const HymnVerse({
    required this.id,
    required this.hymnId,
    this.verseType = 'VERSE',
    this.verseNumber,
    required this.lyrics,
    this.lyricsNormalized = '',
    this.wordCount,
    required this.displayOrder,
    this.midiStartMs,
    this.midiEndMs,
  });

  @override
  List<Object?> get props => [
    id, hymnId, verseType, verseNumber, lyrics,
    lyricsNormalized, wordCount, displayOrder,
    midiStartMs, midiEndMs,
  ];
}
