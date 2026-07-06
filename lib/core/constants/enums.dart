enum Occasion {
  general('GENERAL'),
  sabbath('SABBATH'),
  communion('COMMUNION'),
  baptism('BAPTISM'),
  dedication('DEDICATION'),
  funeral('FUNERAL'),
  christmas('CHRISTMAS'),
  easter('EASTER'),
  secondComing('SECOND_COMING'),
  prayer('PRAYER'),
  praise('PRAISE'),
  nature('NATURE'),
  mission('MISSION'),
  youth('YOUTH'),
  children('CHILDREN'),
  morning('MORNING'),
  evening('EVENING'),
  opening('OPENING'),
  closing('CLOSING');

  final String value;
  const Occasion(this.value);
}

enum TempoCategory {
  slow('SLOW'),
  medium('MEDIUM'),
  fast('FAST');

  final String value;
  const TempoCategory(this.value);
}

enum CopyrightStatus {
  publicDomain('PUBLIC_DOMAIN'),
  licensed('LICENSED'),
  pending('PENDING');

  final String value;
  const CopyrightStatus(this.value);
}

enum VerseType {
  verse('VERSE'),
  chorus('CHORUS'),
  bridge('BRIDGE'),
  refrain('REFRAIN'),
  stanza('STANZA');

  final String value;
  const VerseType(this.value);
}

enum RelationshipType {
  translation('TRANSLATION'),
  sameTune('SAME_TUNE'),
  thematic('THEMATIC'),
  arrangement('ARRANGEMENT');

  final String value;
  const RelationshipType(this.value);
}

enum ItemType {
  hymn('HYMN'),
  scripture('SCRIPTURE'),
  prayer('PRAYER'),
  announcement('ANNOUNCEMENT'),
  sermon('SERMON'),
  offering('OFFERING'),
  custom('CUSTOM');

  final String value;
  const ItemType(this.value);
}

enum EmotionalTone {
  joyful('JOYFUL'),
  reverent('REVERENT'),
  meditative('MEDITATIVE'),
  triumphant('TRIUMPHANT'),
  comforting('COMFORTING'),
  penitential('PENITENTIAL'),
  devotional('DEVOTIONAL');

  final String value;
  const EmotionalTone(this.value);
}

enum Difficulty {
  congregational('CONGREGATIONAL'),
  choirSimple('CHOIR_SIMPLE'),
  choirAdvanced('CHOIR_ADVANCED');

  final String value;
  const Difficulty(this.value);
}

enum Voicing {
  satb('SATB'),
  unison('UNISON'),
  twoPart('TWO_PART');

  final String value;
  const Voicing(this.value);
}

enum ReaderMode {
  reading('READING'),
  performance('PERFORMANCE'),
  study('STUDY');

  final String value;
  const ReaderMode(this.value);
}

enum RepeatMode {
  none('NONE'),
  verse('VERSE'),
  chorus('CHORUS'),
  all('ALL');

  final String value;
  const RepeatMode(this.value);
}

enum PremiumStatus {
  free('FREE'),
  premium('PREMIUM'),
  lifetime('LIFETIME');

  final String value;
  const PremiumStatus(this.value);
}

enum SearchMode {
  auto('AUTO'),
  text('TEXT'),
  ai('AI'),
  verse('VERSE'),
  filtered('FILTERED');

  final String value;
  const SearchMode(this.value);
}

enum ServiceType {
  sabbathMorning('SABBATH_MORNING'),
  prayerMeeting('PRAYER_MEETING'),
  youth('YOUTH'),
  communion('COMMUNION'),
  wedding('WEDDING'),
  funeral('FUNERAL'),
  baptism('BAPTISM'),
  other('OTHER');

  final String value;
  const ServiceType(this.value);
}
