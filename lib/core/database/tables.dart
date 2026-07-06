import 'package:drift/dart.dart';

class Collections extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get code => text().unique()();
  TextColumn get name => text()();
  TextColumn get nameNative => text().nullable()();
  TextColumn get languageCode => text()();
  TextColumn get languageNameEnglish => text()();
  TextColumn get languageNameNative => text()();
  TextColumn get fontFamily => text().withDefault(const Constant('lora'))();
  TextColumn get specialCharacters => text().nullable()();
  IntColumn get tier => integer()();
  IntColumn get totalSongs => integer().withDefault(const Constant(0))();
  BoolColumn get isBundled => boolean().withDefault(const Constant(false))();
  BoolColumn get requiresPremium => boolean().withDefault(const Constant(false))();
  RealColumn get downloadSizeMb => real().nullable()();
  BoolColumn get isDownloaded => boolean().withDefault(const Constant(false))();
  TextColumn get sourceOrganization => text().nullable()();
  TextColumn get licenseType => text().withDefault(const Constant('PENDING'))();
  IntColumn get licenseExpiry => integer().nullable()();
  IntColumn get displayOrder => integer().withDefault(const Constant(0))();
}

class Hymns extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get collectionId => integer().references(Collections, #id)();
  IntColumn get hymnNumber => integer().nullable()();
  TextColumn get title => text()();
  TextColumn get titleNormalized => text()();
  TextColumn get firstLine => text().nullable()();
  TextColumn get firstLineNormalized => text().nullable()();
  TextColumn get tuneName => text().nullable()();
  TextColumn get meter => text().nullable()();
  TextColumn get timeSignature => text().nullable()();
  TextColumn get keySignature => text().nullable()();
  IntColumn get bpmDefault => integer().nullable()();
  IntColumn get composerId => integer().nullable().references(Persons, #id)();
  IntColumn get lyricistId => integer().nullable().references(Persons, #id)();
  IntColumn get yearComposed => integer().nullable()();
  IntColumn get yearPublishedSda => integer().nullable()();
  TextColumn get scriptureRefs => text().nullable()();
  TextColumn get occasions => text().withDefault(const Constant('["GENERAL"]'))();
  TextColumn get emotionalTones => text().nullable()();
  TextColumn get tempoCategory => text().withDefault(const Constant('MEDIUM'))();
  TextColumn get tempoMarking => text().nullable()();
  TextColumn get difficulty => text().withDefault(const Constant('CONGREGATIONAL'))();
  TextColumn get voicing => text().withDefault(const Constant('SATB'))();
  TextColumn get copyrightStatus => text().withDefault(const Constant('PUBLIC_DOMAIN'))();
  TextColumn get copyrightOwner => text().nullable()();
  TextColumn get midiAssetPath => text().nullable()();
  BoolColumn get hasMidi => boolean().withDefault(const Constant(false))();
  BoolColumn get hasChords => boolean().withDefault(const Constant(false))();
  TextColumn get chordData => text().nullable()();
  BoolColumn get isRedLetterSpecial => boolean().withDefault(const Constant(false))();
  TextColumn get dialect => text().nullable()();
  TextColumn get sourceAttribution => text().nullable()();
  BoolColumn get isCommunityContributed => boolean().withDefault(const Constant(false))();
  IntColumn get contributorId => integer().nullable()();
  IntColumn get embeddingId => integer().nullable().references(SongEmbeddings, #id)();
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();
  IntColumn get useCount => integer().withDefault(const Constant(0))();
  IntColumn get lastUsed => integer().nullable()();
}

class Persons extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fullName => text()();
  TextColumn get fullNameNormalized => text()();
  IntColumn get birthYear => integer().nullable()();
  IntColumn get deathYear => integer().nullable()();
  TextColumn get nationality => text().nullable()();
  TextColumn get biographyShort => text().nullable()();
  BoolColumn get isSda => boolean().withDefault(const Constant(false))();
}

class HymnVerses extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get hymnId => integer().references(Hymns, #id).nullable()();
  TextColumn get verseType => text()();
  IntColumn get verseNumber => integer().nullable()();
  TextColumn get lyrics => text()();
  TextColumn get lyricsNormalized => text()();
  IntColumn get wordCount => integer().nullable()();
  IntColumn get displayOrder => integer()();
  IntColumn get midiStartMs => integer().nullable()();
  IntColumn get midiEndMs => integer().nullable()();
}

class HymnCrossReferences extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get sourceHymnId => integer().references(Hymns, #id)();
  IntColumn get targetHymnId => integer().references(Hymns, #id)();
  TextColumn get relationship => text()();
  RealColumn get confidence => real().withDefault(const Constant(1.0))();
}

class Topics extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get nameSwahili => text().nullable()();
  IntColumn get parentId => integer().nullable().references(Topics, #id)();
  IntColumn get displayOrder => integer().nullable()();
}

class HymnTopics extends Table {
  IntColumn get hymnId => integer().references(Hymns, #id)();
  IntColumn get topicId => integer().references(Topics, #id)();
  @override
  Set<Column> get primaryKey => {hymnId, topicId};
}

class SongEmbeddings extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get hymnId => integer().references(Hymns, #id)();
  BlobColumn get embedding => blob()();
  TextColumn get modelVersion => text()();
  IntColumn get generatedAt => integer()();
}

class UserFavorites extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get hymnId => integer().references(Hymns, #id)();
  IntColumn get folderId => integer().nullable().references(FavoriteFolders, #id)();
  IntColumn get addedAt => integer()();
  TextColumn get personalNote => text().nullable()();
  IntColumn get displayOrder => integer().nullable()();
}

class FavoriteFolders extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get color => text().nullable()();
  TextColumn get icon => text().nullable()();
  IntColumn get createdAt => integer()();
  IntColumn get displayOrder => integer().withDefault(const Constant(0))();
}

class SearchHistory extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get query => text()();
  TextColumn get searchType => text()();
  TextColumn get filtersJson => text().nullable()();
  IntColumn get resultCount => integer().nullable()();
  IntColumn get searchedAt => integer()();
  BoolColumn get isSaved => boolean().withDefault(const Constant(false))();
  TextColumn get savedName => text().nullable()();
}

class WorshipPrograms extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  IntColumn get date => integer().nullable()();
  TextColumn get churchName => text().nullable()();
  TextColumn get serviceType => text().nullable()();
  TextColumn get notes => text().nullable()();
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();
  BoolColumn get isTemplate => boolean().withDefault(const Constant(false))();
}

class ProgramItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get programId => integer().references(WorshipPrograms, #id)();
  IntColumn get displayOrder => integer()();
  TextColumn get itemType => text()();
  IntColumn get hymnId => integer().nullable().references(Hymns, #id)();
  TextColumn get customTitle => text().nullable()();
  TextColumn get customContent => text().nullable()();
  IntColumn get durationMinutes => integer().nullable()();
  TextColumn get notes => text().nullable()();
  BoolColumn get isComplete => boolean().withDefault(const Constant(false))();
}

class UserSettings extends Table {
  IntColumn get id => integer().clientDefault(() => 1)();
  TextColumn get theme => text().withDefault(const Constant('DEEP_SPACE'))();
  TextColumn get accentColor => text().withDefault(const Constant('#D4AF37'))();
  IntColumn get fontSize => integer().withDefault(const Constant(18))();
  TextColumn get fontFamily => text().withDefault(const Constant('lora'))();
  TextColumn get lineSpacing => text().withDefault(const Constant('NORMAL'))();
  TextColumn get readerMode => text().withDefault(const Constant('READING'))();
  BoolColumn get showVerseLabels => boolean().withDefault(const Constant(true))();
  BoolColumn get showTuneName => boolean().withDefault(const Constant(true))();
  BoolColumn get showMeter => boolean().withDefault(const Constant(false))();
  BoolColumn get showComposer => boolean().withDefault(const Constant(true))();
  BoolColumn get showScriptureRef => boolean().withDefault(const Constant(true))();
  BoolColumn get showChords => boolean().withDefault(const Constant(false))();
  BoolColumn get highlightCurrentLine => boolean().withDefault(const Constant(true))();
  TextColumn get midiInstrument => text().withDefault(const Constant('ORGAN'))();
  RealColumn get midiTempoMultiplier => real().withDefault(const Constant(1.0))();
  IntColumn get midiTranspose => integer().withDefault(const Constant(0))();
  TextColumn get midiRepeatMode => text().withDefault(const Constant('NONE'))();
  BoolColumn get midiCountIn => boolean().withDefault(const Constant(false))();
  BoolColumn get midiVerseByVerse => boolean().withDefault(const Constant(false))();
  BoolColumn get autoScroll => boolean().withDefault(const Constant(false))();
  BoolColumn get backgroundPlayback => boolean().withDefault(const Constant(true))();
  TextColumn get defaultSearchMode => text().withDefault(const Constant('TEXT'))();
  TextColumn get searchLanguageFilter => text().withDefault(const Constant('ALL'))();
  TextColumn get searchCollectionFilter => text().withDefault(const Constant('ALL'))();
  TextColumn get savedFiltersJson => text().nullable()();
  TextColumn get activeCollectionIds => text().withDefault(const Constant('[1,2]'))();
  TextColumn get displayLanguage => text().withDefault(const Constant('en'))();
  BoolColumn get showIntroAnimation => boolean().withDefault(const Constant(true))();
  BoolColumn get reduceMotion => boolean().withDefault(const Constant(false))();
  TextColumn get premiumStatus => text().withDefault(const Constant('FREE'))();
  IntColumn get premiumExpiry => integer().nullable()();
  BoolColumn get cloudSyncEnabled => boolean().withDefault(const Constant(false))();
  BoolColumn get analyticsEnabled => boolean().withDefault(const Constant(false))();
}

class HymnNotes extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get hymnId => integer().references(Hymns, #id)();
  TextColumn get content => text()();
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();
}
