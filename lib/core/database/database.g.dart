// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CollectionsTable extends Collections
    with TableInfo<$CollectionsTable, Collection> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameNativeMeta =
      const VerificationMeta('nameNative');
  @override
  late final GeneratedColumn<String> nameNative = GeneratedColumn<String>(
      'name_native', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _languageCodeMeta =
      const VerificationMeta('languageCode');
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
      'language_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageNameEnglishMeta =
      const VerificationMeta('languageNameEnglish');
  @override
  late final GeneratedColumn<String> languageNameEnglish =
      GeneratedColumn<String>('language_name_english', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageNameNativeMeta =
      const VerificationMeta('languageNameNative');
  @override
  late final GeneratedColumn<String> languageNameNative =
      GeneratedColumn<String>('language_name_native', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fontFamilyMeta =
      const VerificationMeta('fontFamily');
  @override
  late final GeneratedColumn<String> fontFamily = GeneratedColumn<String>(
      'font_family', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('lora'));
  static const VerificationMeta _specialCharactersMeta =
      const VerificationMeta('specialCharacters');
  @override
  late final GeneratedColumn<String> specialCharacters =
      GeneratedColumn<String>('special_characters', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tierMeta = const VerificationMeta('tier');
  @override
  late final GeneratedColumn<int> tier = GeneratedColumn<int>(
      'tier', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalSongsMeta =
      const VerificationMeta('totalSongs');
  @override
  late final GeneratedColumn<int> totalSongs = GeneratedColumn<int>(
      'total_songs', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isBundledMeta =
      const VerificationMeta('isBundled');
  @override
  late final GeneratedColumn<bool> isBundled = GeneratedColumn<bool>(
      'is_bundled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_bundled" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _requiresPremiumMeta =
      const VerificationMeta('requiresPremium');
  @override
  late final GeneratedColumn<bool> requiresPremium = GeneratedColumn<bool>(
      'requires_premium', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("requires_premium" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _downloadSizeMbMeta =
      const VerificationMeta('downloadSizeMb');
  @override
  late final GeneratedColumn<double> downloadSizeMb = GeneratedColumn<double>(
      'download_size_mb', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _isDownloadedMeta =
      const VerificationMeta('isDownloaded');
  @override
  late final GeneratedColumn<bool> isDownloaded = GeneratedColumn<bool>(
      'is_downloaded', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_downloaded" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _sourceOrganizationMeta =
      const VerificationMeta('sourceOrganization');
  @override
  late final GeneratedColumn<String> sourceOrganization =
      GeneratedColumn<String>('source_organization', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _licenseTypeMeta =
      const VerificationMeta('licenseType');
  @override
  late final GeneratedColumn<String> licenseType = GeneratedColumn<String>(
      'license_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('PENDING'));
  static const VerificationMeta _licenseExpiryMeta =
      const VerificationMeta('licenseExpiry');
  @override
  late final GeneratedColumn<int> licenseExpiry = GeneratedColumn<int>(
      'license_expiry', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        code,
        name,
        nameNative,
        languageCode,
        languageNameEnglish,
        languageNameNative,
        fontFamily,
        specialCharacters,
        tier,
        totalSongs,
        isBundled,
        requiresPremium,
        downloadSizeMb,
        isDownloaded,
        sourceOrganization,
        licenseType,
        licenseExpiry,
        displayOrder
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'collections';
  @override
  VerificationContext validateIntegrity(Insertable<Collection> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_native')) {
      context.handle(
          _nameNativeMeta,
          nameNative.isAcceptableOrUnknown(
              data['name_native']!, _nameNativeMeta));
    }
    if (data.containsKey('language_code')) {
      context.handle(
          _languageCodeMeta,
          languageCode.isAcceptableOrUnknown(
              data['language_code']!, _languageCodeMeta));
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (data.containsKey('language_name_english')) {
      context.handle(
          _languageNameEnglishMeta,
          languageNameEnglish.isAcceptableOrUnknown(
              data['language_name_english']!, _languageNameEnglishMeta));
    } else if (isInserting) {
      context.missing(_languageNameEnglishMeta);
    }
    if (data.containsKey('language_name_native')) {
      context.handle(
          _languageNameNativeMeta,
          languageNameNative.isAcceptableOrUnknown(
              data['language_name_native']!, _languageNameNativeMeta));
    } else if (isInserting) {
      context.missing(_languageNameNativeMeta);
    }
    if (data.containsKey('font_family')) {
      context.handle(
          _fontFamilyMeta,
          fontFamily.isAcceptableOrUnknown(
              data['font_family']!, _fontFamilyMeta));
    }
    if (data.containsKey('special_characters')) {
      context.handle(
          _specialCharactersMeta,
          specialCharacters.isAcceptableOrUnknown(
              data['special_characters']!, _specialCharactersMeta));
    }
    if (data.containsKey('tier')) {
      context.handle(
          _tierMeta, tier.isAcceptableOrUnknown(data['tier']!, _tierMeta));
    } else if (isInserting) {
      context.missing(_tierMeta);
    }
    if (data.containsKey('total_songs')) {
      context.handle(
          _totalSongsMeta,
          totalSongs.isAcceptableOrUnknown(
              data['total_songs']!, _totalSongsMeta));
    }
    if (data.containsKey('is_bundled')) {
      context.handle(_isBundledMeta,
          isBundled.isAcceptableOrUnknown(data['is_bundled']!, _isBundledMeta));
    }
    if (data.containsKey('requires_premium')) {
      context.handle(
          _requiresPremiumMeta,
          requiresPremium.isAcceptableOrUnknown(
              data['requires_premium']!, _requiresPremiumMeta));
    }
    if (data.containsKey('download_size_mb')) {
      context.handle(
          _downloadSizeMbMeta,
          downloadSizeMb.isAcceptableOrUnknown(
              data['download_size_mb']!, _downloadSizeMbMeta));
    }
    if (data.containsKey('is_downloaded')) {
      context.handle(
          _isDownloadedMeta,
          isDownloaded.isAcceptableOrUnknown(
              data['is_downloaded']!, _isDownloadedMeta));
    }
    if (data.containsKey('source_organization')) {
      context.handle(
          _sourceOrganizationMeta,
          sourceOrganization.isAcceptableOrUnknown(
              data['source_organization']!, _sourceOrganizationMeta));
    }
    if (data.containsKey('license_type')) {
      context.handle(
          _licenseTypeMeta,
          licenseType.isAcceptableOrUnknown(
              data['license_type']!, _licenseTypeMeta));
    }
    if (data.containsKey('license_expiry')) {
      context.handle(
          _licenseExpiryMeta,
          licenseExpiry.isAcceptableOrUnknown(
              data['license_expiry']!, _licenseExpiryMeta));
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Collection map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Collection(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      nameNative: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_native']),
      languageCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language_code'])!,
      languageNameEnglish: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}language_name_english'])!,
      languageNameNative: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}language_name_native'])!,
      fontFamily: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}font_family'])!,
      specialCharacters: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}special_characters']),
      tier: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tier'])!,
      totalSongs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_songs'])!,
      isBundled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_bundled'])!,
      requiresPremium: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}requires_premium'])!,
      downloadSizeMb: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}download_size_mb']),
      isDownloaded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_downloaded'])!,
      sourceOrganization: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}source_organization']),
      licenseType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}license_type'])!,
      licenseExpiry: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}license_expiry']),
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order'])!,
    );
  }

  @override
  $CollectionsTable createAlias(String alias) {
    return $CollectionsTable(attachedDatabase, alias);
  }
}

class Collection extends DataClass implements Insertable<Collection> {
  final int id;
  final String code;
  final String name;
  final String? nameNative;
  final String languageCode;
  final String languageNameEnglish;
  final String languageNameNative;
  final String fontFamily;
  final String? specialCharacters;
  final int tier;
  final int totalSongs;
  final bool isBundled;
  final bool requiresPremium;
  final double? downloadSizeMb;
  final bool isDownloaded;
  final String? sourceOrganization;
  final String licenseType;
  final int? licenseExpiry;
  final int displayOrder;
  const Collection(
      {required this.id,
      required this.code,
      required this.name,
      this.nameNative,
      required this.languageCode,
      required this.languageNameEnglish,
      required this.languageNameNative,
      required this.fontFamily,
      this.specialCharacters,
      required this.tier,
      required this.totalSongs,
      required this.isBundled,
      required this.requiresPremium,
      this.downloadSizeMb,
      required this.isDownloaded,
      this.sourceOrganization,
      required this.licenseType,
      this.licenseExpiry,
      required this.displayOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameNative != null) {
      map['name_native'] = Variable<String>(nameNative);
    }
    map['language_code'] = Variable<String>(languageCode);
    map['language_name_english'] = Variable<String>(languageNameEnglish);
    map['language_name_native'] = Variable<String>(languageNameNative);
    map['font_family'] = Variable<String>(fontFamily);
    if (!nullToAbsent || specialCharacters != null) {
      map['special_characters'] = Variable<String>(specialCharacters);
    }
    map['tier'] = Variable<int>(tier);
    map['total_songs'] = Variable<int>(totalSongs);
    map['is_bundled'] = Variable<bool>(isBundled);
    map['requires_premium'] = Variable<bool>(requiresPremium);
    if (!nullToAbsent || downloadSizeMb != null) {
      map['download_size_mb'] = Variable<double>(downloadSizeMb);
    }
    map['is_downloaded'] = Variable<bool>(isDownloaded);
    if (!nullToAbsent || sourceOrganization != null) {
      map['source_organization'] = Variable<String>(sourceOrganization);
    }
    map['license_type'] = Variable<String>(licenseType);
    if (!nullToAbsent || licenseExpiry != null) {
      map['license_expiry'] = Variable<int>(licenseExpiry);
    }
    map['display_order'] = Variable<int>(displayOrder);
    return map;
  }

  CollectionsCompanion toCompanion(bool nullToAbsent) {
    return CollectionsCompanion(
      id: Value(id),
      code: Value(code),
      name: Value(name),
      nameNative: nameNative == null && nullToAbsent
          ? const Value.absent()
          : Value(nameNative),
      languageCode: Value(languageCode),
      languageNameEnglish: Value(languageNameEnglish),
      languageNameNative: Value(languageNameNative),
      fontFamily: Value(fontFamily),
      specialCharacters: specialCharacters == null && nullToAbsent
          ? const Value.absent()
          : Value(specialCharacters),
      tier: Value(tier),
      totalSongs: Value(totalSongs),
      isBundled: Value(isBundled),
      requiresPremium: Value(requiresPremium),
      downloadSizeMb: downloadSizeMb == null && nullToAbsent
          ? const Value.absent()
          : Value(downloadSizeMb),
      isDownloaded: Value(isDownloaded),
      sourceOrganization: sourceOrganization == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceOrganization),
      licenseType: Value(licenseType),
      licenseExpiry: licenseExpiry == null && nullToAbsent
          ? const Value.absent()
          : Value(licenseExpiry),
      displayOrder: Value(displayOrder),
    );
  }

  factory Collection.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Collection(
      id: serializer.fromJson<int>(json['id']),
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      nameNative: serializer.fromJson<String?>(json['nameNative']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      languageNameEnglish:
          serializer.fromJson<String>(json['languageNameEnglish']),
      languageNameNative:
          serializer.fromJson<String>(json['languageNameNative']),
      fontFamily: serializer.fromJson<String>(json['fontFamily']),
      specialCharacters:
          serializer.fromJson<String?>(json['specialCharacters']),
      tier: serializer.fromJson<int>(json['tier']),
      totalSongs: serializer.fromJson<int>(json['totalSongs']),
      isBundled: serializer.fromJson<bool>(json['isBundled']),
      requiresPremium: serializer.fromJson<bool>(json['requiresPremium']),
      downloadSizeMb: serializer.fromJson<double?>(json['downloadSizeMb']),
      isDownloaded: serializer.fromJson<bool>(json['isDownloaded']),
      sourceOrganization:
          serializer.fromJson<String?>(json['sourceOrganization']),
      licenseType: serializer.fromJson<String>(json['licenseType']),
      licenseExpiry: serializer.fromJson<int?>(json['licenseExpiry']),
      displayOrder: serializer.fromJson<int>(json['displayOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'nameNative': serializer.toJson<String?>(nameNative),
      'languageCode': serializer.toJson<String>(languageCode),
      'languageNameEnglish': serializer.toJson<String>(languageNameEnglish),
      'languageNameNative': serializer.toJson<String>(languageNameNative),
      'fontFamily': serializer.toJson<String>(fontFamily),
      'specialCharacters': serializer.toJson<String?>(specialCharacters),
      'tier': serializer.toJson<int>(tier),
      'totalSongs': serializer.toJson<int>(totalSongs),
      'isBundled': serializer.toJson<bool>(isBundled),
      'requiresPremium': serializer.toJson<bool>(requiresPremium),
      'downloadSizeMb': serializer.toJson<double?>(downloadSizeMb),
      'isDownloaded': serializer.toJson<bool>(isDownloaded),
      'sourceOrganization': serializer.toJson<String?>(sourceOrganization),
      'licenseType': serializer.toJson<String>(licenseType),
      'licenseExpiry': serializer.toJson<int?>(licenseExpiry),
      'displayOrder': serializer.toJson<int>(displayOrder),
    };
  }

  Collection copyWith(
          {int? id,
          String? code,
          String? name,
          Value<String?> nameNative = const Value.absent(),
          String? languageCode,
          String? languageNameEnglish,
          String? languageNameNative,
          String? fontFamily,
          Value<String?> specialCharacters = const Value.absent(),
          int? tier,
          int? totalSongs,
          bool? isBundled,
          bool? requiresPremium,
          Value<double?> downloadSizeMb = const Value.absent(),
          bool? isDownloaded,
          Value<String?> sourceOrganization = const Value.absent(),
          String? licenseType,
          Value<int?> licenseExpiry = const Value.absent(),
          int? displayOrder}) =>
      Collection(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        nameNative: nameNative.present ? nameNative.value : this.nameNative,
        languageCode: languageCode ?? this.languageCode,
        languageNameEnglish: languageNameEnglish ?? this.languageNameEnglish,
        languageNameNative: languageNameNative ?? this.languageNameNative,
        fontFamily: fontFamily ?? this.fontFamily,
        specialCharacters: specialCharacters.present
            ? specialCharacters.value
            : this.specialCharacters,
        tier: tier ?? this.tier,
        totalSongs: totalSongs ?? this.totalSongs,
        isBundled: isBundled ?? this.isBundled,
        requiresPremium: requiresPremium ?? this.requiresPremium,
        downloadSizeMb:
            downloadSizeMb.present ? downloadSizeMb.value : this.downloadSizeMb,
        isDownloaded: isDownloaded ?? this.isDownloaded,
        sourceOrganization: sourceOrganization.present
            ? sourceOrganization.value
            : this.sourceOrganization,
        licenseType: licenseType ?? this.licenseType,
        licenseExpiry:
            licenseExpiry.present ? licenseExpiry.value : this.licenseExpiry,
        displayOrder: displayOrder ?? this.displayOrder,
      );
  @override
  String toString() {
    return (StringBuffer('Collection(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('nameNative: $nameNative, ')
          ..write('languageCode: $languageCode, ')
          ..write('languageNameEnglish: $languageNameEnglish, ')
          ..write('languageNameNative: $languageNameNative, ')
          ..write('fontFamily: $fontFamily, ')
          ..write('specialCharacters: $specialCharacters, ')
          ..write('tier: $tier, ')
          ..write('totalSongs: $totalSongs, ')
          ..write('isBundled: $isBundled, ')
          ..write('requiresPremium: $requiresPremium, ')
          ..write('downloadSizeMb: $downloadSizeMb, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('sourceOrganization: $sourceOrganization, ')
          ..write('licenseType: $licenseType, ')
          ..write('licenseExpiry: $licenseExpiry, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      code,
      name,
      nameNative,
      languageCode,
      languageNameEnglish,
      languageNameNative,
      fontFamily,
      specialCharacters,
      tier,
      totalSongs,
      isBundled,
      requiresPremium,
      downloadSizeMb,
      isDownloaded,
      sourceOrganization,
      licenseType,
      licenseExpiry,
      displayOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Collection &&
          other.id == this.id &&
          other.code == this.code &&
          other.name == this.name &&
          other.nameNative == this.nameNative &&
          other.languageCode == this.languageCode &&
          other.languageNameEnglish == this.languageNameEnglish &&
          other.languageNameNative == this.languageNameNative &&
          other.fontFamily == this.fontFamily &&
          other.specialCharacters == this.specialCharacters &&
          other.tier == this.tier &&
          other.totalSongs == this.totalSongs &&
          other.isBundled == this.isBundled &&
          other.requiresPremium == this.requiresPremium &&
          other.downloadSizeMb == this.downloadSizeMb &&
          other.isDownloaded == this.isDownloaded &&
          other.sourceOrganization == this.sourceOrganization &&
          other.licenseType == this.licenseType &&
          other.licenseExpiry == this.licenseExpiry &&
          other.displayOrder == this.displayOrder);
}

class CollectionsCompanion extends UpdateCompanion<Collection> {
  final Value<int> id;
  final Value<String> code;
  final Value<String> name;
  final Value<String?> nameNative;
  final Value<String> languageCode;
  final Value<String> languageNameEnglish;
  final Value<String> languageNameNative;
  final Value<String> fontFamily;
  final Value<String?> specialCharacters;
  final Value<int> tier;
  final Value<int> totalSongs;
  final Value<bool> isBundled;
  final Value<bool> requiresPremium;
  final Value<double?> downloadSizeMb;
  final Value<bool> isDownloaded;
  final Value<String?> sourceOrganization;
  final Value<String> licenseType;
  final Value<int?> licenseExpiry;
  final Value<int> displayOrder;
  const CollectionsCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.nameNative = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.languageNameEnglish = const Value.absent(),
    this.languageNameNative = const Value.absent(),
    this.fontFamily = const Value.absent(),
    this.specialCharacters = const Value.absent(),
    this.tier = const Value.absent(),
    this.totalSongs = const Value.absent(),
    this.isBundled = const Value.absent(),
    this.requiresPremium = const Value.absent(),
    this.downloadSizeMb = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.sourceOrganization = const Value.absent(),
    this.licenseType = const Value.absent(),
    this.licenseExpiry = const Value.absent(),
    this.displayOrder = const Value.absent(),
  });
  CollectionsCompanion.insert({
    this.id = const Value.absent(),
    required String code,
    required String name,
    this.nameNative = const Value.absent(),
    required String languageCode,
    required String languageNameEnglish,
    required String languageNameNative,
    this.fontFamily = const Value.absent(),
    this.specialCharacters = const Value.absent(),
    required int tier,
    this.totalSongs = const Value.absent(),
    this.isBundled = const Value.absent(),
    this.requiresPremium = const Value.absent(),
    this.downloadSizeMb = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.sourceOrganization = const Value.absent(),
    this.licenseType = const Value.absent(),
    this.licenseExpiry = const Value.absent(),
    this.displayOrder = const Value.absent(),
  })  : code = Value(code),
        name = Value(name),
        languageCode = Value(languageCode),
        languageNameEnglish = Value(languageNameEnglish),
        languageNameNative = Value(languageNameNative),
        tier = Value(tier);
  static Insertable<Collection> custom({
    Expression<int>? id,
    Expression<String>? code,
    Expression<String>? name,
    Expression<String>? nameNative,
    Expression<String>? languageCode,
    Expression<String>? languageNameEnglish,
    Expression<String>? languageNameNative,
    Expression<String>? fontFamily,
    Expression<String>? specialCharacters,
    Expression<int>? tier,
    Expression<int>? totalSongs,
    Expression<bool>? isBundled,
    Expression<bool>? requiresPremium,
    Expression<double>? downloadSizeMb,
    Expression<bool>? isDownloaded,
    Expression<String>? sourceOrganization,
    Expression<String>? licenseType,
    Expression<int>? licenseExpiry,
    Expression<int>? displayOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (nameNative != null) 'name_native': nameNative,
      if (languageCode != null) 'language_code': languageCode,
      if (languageNameEnglish != null)
        'language_name_english': languageNameEnglish,
      if (languageNameNative != null)
        'language_name_native': languageNameNative,
      if (fontFamily != null) 'font_family': fontFamily,
      if (specialCharacters != null) 'special_characters': specialCharacters,
      if (tier != null) 'tier': tier,
      if (totalSongs != null) 'total_songs': totalSongs,
      if (isBundled != null) 'is_bundled': isBundled,
      if (requiresPremium != null) 'requires_premium': requiresPremium,
      if (downloadSizeMb != null) 'download_size_mb': downloadSizeMb,
      if (isDownloaded != null) 'is_downloaded': isDownloaded,
      if (sourceOrganization != null) 'source_organization': sourceOrganization,
      if (licenseType != null) 'license_type': licenseType,
      if (licenseExpiry != null) 'license_expiry': licenseExpiry,
      if (displayOrder != null) 'display_order': displayOrder,
    });
  }

  CollectionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? code,
      Value<String>? name,
      Value<String?>? nameNative,
      Value<String>? languageCode,
      Value<String>? languageNameEnglish,
      Value<String>? languageNameNative,
      Value<String>? fontFamily,
      Value<String?>? specialCharacters,
      Value<int>? tier,
      Value<int>? totalSongs,
      Value<bool>? isBundled,
      Value<bool>? requiresPremium,
      Value<double?>? downloadSizeMb,
      Value<bool>? isDownloaded,
      Value<String?>? sourceOrganization,
      Value<String>? licenseType,
      Value<int?>? licenseExpiry,
      Value<int>? displayOrder}) {
    return CollectionsCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      nameNative: nameNative ?? this.nameNative,
      languageCode: languageCode ?? this.languageCode,
      languageNameEnglish: languageNameEnglish ?? this.languageNameEnglish,
      languageNameNative: languageNameNative ?? this.languageNameNative,
      fontFamily: fontFamily ?? this.fontFamily,
      specialCharacters: specialCharacters ?? this.specialCharacters,
      tier: tier ?? this.tier,
      totalSongs: totalSongs ?? this.totalSongs,
      isBundled: isBundled ?? this.isBundled,
      requiresPremium: requiresPremium ?? this.requiresPremium,
      downloadSizeMb: downloadSizeMb ?? this.downloadSizeMb,
      isDownloaded: isDownloaded ?? this.isDownloaded,
      sourceOrganization: sourceOrganization ?? this.sourceOrganization,
      licenseType: licenseType ?? this.licenseType,
      licenseExpiry: licenseExpiry ?? this.licenseExpiry,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameNative.present) {
      map['name_native'] = Variable<String>(nameNative.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (languageNameEnglish.present) {
      map['language_name_english'] =
          Variable<String>(languageNameEnglish.value);
    }
    if (languageNameNative.present) {
      map['language_name_native'] = Variable<String>(languageNameNative.value);
    }
    if (fontFamily.present) {
      map['font_family'] = Variable<String>(fontFamily.value);
    }
    if (specialCharacters.present) {
      map['special_characters'] = Variable<String>(specialCharacters.value);
    }
    if (tier.present) {
      map['tier'] = Variable<int>(tier.value);
    }
    if (totalSongs.present) {
      map['total_songs'] = Variable<int>(totalSongs.value);
    }
    if (isBundled.present) {
      map['is_bundled'] = Variable<bool>(isBundled.value);
    }
    if (requiresPremium.present) {
      map['requires_premium'] = Variable<bool>(requiresPremium.value);
    }
    if (downloadSizeMb.present) {
      map['download_size_mb'] = Variable<double>(downloadSizeMb.value);
    }
    if (isDownloaded.present) {
      map['is_downloaded'] = Variable<bool>(isDownloaded.value);
    }
    if (sourceOrganization.present) {
      map['source_organization'] = Variable<String>(sourceOrganization.value);
    }
    if (licenseType.present) {
      map['license_type'] = Variable<String>(licenseType.value);
    }
    if (licenseExpiry.present) {
      map['license_expiry'] = Variable<int>(licenseExpiry.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('nameNative: $nameNative, ')
          ..write('languageCode: $languageCode, ')
          ..write('languageNameEnglish: $languageNameEnglish, ')
          ..write('languageNameNative: $languageNameNative, ')
          ..write('fontFamily: $fontFamily, ')
          ..write('specialCharacters: $specialCharacters, ')
          ..write('tier: $tier, ')
          ..write('totalSongs: $totalSongs, ')
          ..write('isBundled: $isBundled, ')
          ..write('requiresPremium: $requiresPremium, ')
          ..write('downloadSizeMb: $downloadSizeMb, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('sourceOrganization: $sourceOrganization, ')
          ..write('licenseType: $licenseType, ')
          ..write('licenseExpiry: $licenseExpiry, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }
}

class $PersonsTable extends Persons with TableInfo<$PersonsTable, Person> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameNormalizedMeta =
      const VerificationMeta('fullNameNormalized');
  @override
  late final GeneratedColumn<String> fullNameNormalized =
      GeneratedColumn<String>('full_name_normalized', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _birthYearMeta =
      const VerificationMeta('birthYear');
  @override
  late final GeneratedColumn<int> birthYear = GeneratedColumn<int>(
      'birth_year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deathYearMeta =
      const VerificationMeta('deathYear');
  @override
  late final GeneratedColumn<int> deathYear = GeneratedColumn<int>(
      'death_year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nationalityMeta =
      const VerificationMeta('nationality');
  @override
  late final GeneratedColumn<String> nationality = GeneratedColumn<String>(
      'nationality', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _biographyShortMeta =
      const VerificationMeta('biographyShort');
  @override
  late final GeneratedColumn<String> biographyShort = GeneratedColumn<String>(
      'biography_short', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isSdaMeta = const VerificationMeta('isSda');
  @override
  late final GeneratedColumn<bool> isSda = GeneratedColumn<bool>(
      'is_sda', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_sda" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fullName,
        fullNameNormalized,
        birthYear,
        deathYear,
        nationality,
        biographyShort,
        isSda
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'persons';
  @override
  VerificationContext validateIntegrity(Insertable<Person> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('full_name_normalized')) {
      context.handle(
          _fullNameNormalizedMeta,
          fullNameNormalized.isAcceptableOrUnknown(
              data['full_name_normalized']!, _fullNameNormalizedMeta));
    } else if (isInserting) {
      context.missing(_fullNameNormalizedMeta);
    }
    if (data.containsKey('birth_year')) {
      context.handle(_birthYearMeta,
          birthYear.isAcceptableOrUnknown(data['birth_year']!, _birthYearMeta));
    }
    if (data.containsKey('death_year')) {
      context.handle(_deathYearMeta,
          deathYear.isAcceptableOrUnknown(data['death_year']!, _deathYearMeta));
    }
    if (data.containsKey('nationality')) {
      context.handle(
          _nationalityMeta,
          nationality.isAcceptableOrUnknown(
              data['nationality']!, _nationalityMeta));
    }
    if (data.containsKey('biography_short')) {
      context.handle(
          _biographyShortMeta,
          biographyShort.isAcceptableOrUnknown(
              data['biography_short']!, _biographyShortMeta));
    }
    if (data.containsKey('is_sda')) {
      context.handle(
          _isSdaMeta, isSda.isAcceptableOrUnknown(data['is_sda']!, _isSdaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Person map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Person(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      fullNameNormalized: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}full_name_normalized'])!,
      birthYear: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}birth_year']),
      deathYear: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}death_year']),
      nationality: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nationality']),
      biographyShort: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}biography_short']),
      isSda: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_sda'])!,
    );
  }

  @override
  $PersonsTable createAlias(String alias) {
    return $PersonsTable(attachedDatabase, alias);
  }
}

class Person extends DataClass implements Insertable<Person> {
  final int id;
  final String fullName;
  final String fullNameNormalized;
  final int? birthYear;
  final int? deathYear;
  final String? nationality;
  final String? biographyShort;
  final bool isSda;
  const Person(
      {required this.id,
      required this.fullName,
      required this.fullNameNormalized,
      this.birthYear,
      this.deathYear,
      this.nationality,
      this.biographyShort,
      required this.isSda});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['full_name'] = Variable<String>(fullName);
    map['full_name_normalized'] = Variable<String>(fullNameNormalized);
    if (!nullToAbsent || birthYear != null) {
      map['birth_year'] = Variable<int>(birthYear);
    }
    if (!nullToAbsent || deathYear != null) {
      map['death_year'] = Variable<int>(deathYear);
    }
    if (!nullToAbsent || nationality != null) {
      map['nationality'] = Variable<String>(nationality);
    }
    if (!nullToAbsent || biographyShort != null) {
      map['biography_short'] = Variable<String>(biographyShort);
    }
    map['is_sda'] = Variable<bool>(isSda);
    return map;
  }

  PersonsCompanion toCompanion(bool nullToAbsent) {
    return PersonsCompanion(
      id: Value(id),
      fullName: Value(fullName),
      fullNameNormalized: Value(fullNameNormalized),
      birthYear: birthYear == null && nullToAbsent
          ? const Value.absent()
          : Value(birthYear),
      deathYear: deathYear == null && nullToAbsent
          ? const Value.absent()
          : Value(deathYear),
      nationality: nationality == null && nullToAbsent
          ? const Value.absent()
          : Value(nationality),
      biographyShort: biographyShort == null && nullToAbsent
          ? const Value.absent()
          : Value(biographyShort),
      isSda: Value(isSda),
    );
  }

  factory Person.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Person(
      id: serializer.fromJson<int>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      fullNameNormalized:
          serializer.fromJson<String>(json['fullNameNormalized']),
      birthYear: serializer.fromJson<int?>(json['birthYear']),
      deathYear: serializer.fromJson<int?>(json['deathYear']),
      nationality: serializer.fromJson<String?>(json['nationality']),
      biographyShort: serializer.fromJson<String?>(json['biographyShort']),
      isSda: serializer.fromJson<bool>(json['isSda']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fullName': serializer.toJson<String>(fullName),
      'fullNameNormalized': serializer.toJson<String>(fullNameNormalized),
      'birthYear': serializer.toJson<int?>(birthYear),
      'deathYear': serializer.toJson<int?>(deathYear),
      'nationality': serializer.toJson<String?>(nationality),
      'biographyShort': serializer.toJson<String?>(biographyShort),
      'isSda': serializer.toJson<bool>(isSda),
    };
  }

  Person copyWith(
          {int? id,
          String? fullName,
          String? fullNameNormalized,
          Value<int?> birthYear = const Value.absent(),
          Value<int?> deathYear = const Value.absent(),
          Value<String?> nationality = const Value.absent(),
          Value<String?> biographyShort = const Value.absent(),
          bool? isSda}) =>
      Person(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        fullNameNormalized: fullNameNormalized ?? this.fullNameNormalized,
        birthYear: birthYear.present ? birthYear.value : this.birthYear,
        deathYear: deathYear.present ? deathYear.value : this.deathYear,
        nationality: nationality.present ? nationality.value : this.nationality,
        biographyShort:
            biographyShort.present ? biographyShort.value : this.biographyShort,
        isSda: isSda ?? this.isSda,
      );
  @override
  String toString() {
    return (StringBuffer('Person(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('fullNameNormalized: $fullNameNormalized, ')
          ..write('birthYear: $birthYear, ')
          ..write('deathYear: $deathYear, ')
          ..write('nationality: $nationality, ')
          ..write('biographyShort: $biographyShort, ')
          ..write('isSda: $isSda')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fullName, fullNameNormalized, birthYear,
      deathYear, nationality, biographyShort, isSda);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Person &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.fullNameNormalized == this.fullNameNormalized &&
          other.birthYear == this.birthYear &&
          other.deathYear == this.deathYear &&
          other.nationality == this.nationality &&
          other.biographyShort == this.biographyShort &&
          other.isSda == this.isSda);
}

class PersonsCompanion extends UpdateCompanion<Person> {
  final Value<int> id;
  final Value<String> fullName;
  final Value<String> fullNameNormalized;
  final Value<int?> birthYear;
  final Value<int?> deathYear;
  final Value<String?> nationality;
  final Value<String?> biographyShort;
  final Value<bool> isSda;
  const PersonsCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.fullNameNormalized = const Value.absent(),
    this.birthYear = const Value.absent(),
    this.deathYear = const Value.absent(),
    this.nationality = const Value.absent(),
    this.biographyShort = const Value.absent(),
    this.isSda = const Value.absent(),
  });
  PersonsCompanion.insert({
    this.id = const Value.absent(),
    required String fullName,
    required String fullNameNormalized,
    this.birthYear = const Value.absent(),
    this.deathYear = const Value.absent(),
    this.nationality = const Value.absent(),
    this.biographyShort = const Value.absent(),
    this.isSda = const Value.absent(),
  })  : fullName = Value(fullName),
        fullNameNormalized = Value(fullNameNormalized);
  static Insertable<Person> custom({
    Expression<int>? id,
    Expression<String>? fullName,
    Expression<String>? fullNameNormalized,
    Expression<int>? birthYear,
    Expression<int>? deathYear,
    Expression<String>? nationality,
    Expression<String>? biographyShort,
    Expression<bool>? isSda,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (fullNameNormalized != null)
        'full_name_normalized': fullNameNormalized,
      if (birthYear != null) 'birth_year': birthYear,
      if (deathYear != null) 'death_year': deathYear,
      if (nationality != null) 'nationality': nationality,
      if (biographyShort != null) 'biography_short': biographyShort,
      if (isSda != null) 'is_sda': isSda,
    });
  }

  PersonsCompanion copyWith(
      {Value<int>? id,
      Value<String>? fullName,
      Value<String>? fullNameNormalized,
      Value<int?>? birthYear,
      Value<int?>? deathYear,
      Value<String?>? nationality,
      Value<String?>? biographyShort,
      Value<bool>? isSda}) {
    return PersonsCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      fullNameNormalized: fullNameNormalized ?? this.fullNameNormalized,
      birthYear: birthYear ?? this.birthYear,
      deathYear: deathYear ?? this.deathYear,
      nationality: nationality ?? this.nationality,
      biographyShort: biographyShort ?? this.biographyShort,
      isSda: isSda ?? this.isSda,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (fullNameNormalized.present) {
      map['full_name_normalized'] = Variable<String>(fullNameNormalized.value);
    }
    if (birthYear.present) {
      map['birth_year'] = Variable<int>(birthYear.value);
    }
    if (deathYear.present) {
      map['death_year'] = Variable<int>(deathYear.value);
    }
    if (nationality.present) {
      map['nationality'] = Variable<String>(nationality.value);
    }
    if (biographyShort.present) {
      map['biography_short'] = Variable<String>(biographyShort.value);
    }
    if (isSda.present) {
      map['is_sda'] = Variable<bool>(isSda.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonsCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('fullNameNormalized: $fullNameNormalized, ')
          ..write('birthYear: $birthYear, ')
          ..write('deathYear: $deathYear, ')
          ..write('nationality: $nationality, ')
          ..write('biographyShort: $biographyShort, ')
          ..write('isSda: $isSda')
          ..write(')'))
        .toString();
  }
}

class $SongEmbeddingsTable extends SongEmbeddings
    with TableInfo<$SongEmbeddingsTable, SongEmbedding> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SongEmbeddingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hymnIdMeta = const VerificationMeta('hymnId');
  @override
  late final GeneratedColumn<int> hymnId = GeneratedColumn<int>(
      'hymn_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _embeddingMeta =
      const VerificationMeta('embedding');
  @override
  late final GeneratedColumn<Uint8List> embedding = GeneratedColumn<Uint8List>(
      'embedding', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _modelVersionMeta =
      const VerificationMeta('modelVersion');
  @override
  late final GeneratedColumn<String> modelVersion = GeneratedColumn<String>(
      'model_version', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _generatedAtMeta =
      const VerificationMeta('generatedAt');
  @override
  late final GeneratedColumn<int> generatedAt = GeneratedColumn<int>(
      'generated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, hymnId, embedding, modelVersion, generatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'song_embeddings';
  @override
  VerificationContext validateIntegrity(Insertable<SongEmbedding> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hymn_id')) {
      context.handle(_hymnIdMeta,
          hymnId.isAcceptableOrUnknown(data['hymn_id']!, _hymnIdMeta));
    } else if (isInserting) {
      context.missing(_hymnIdMeta);
    }
    if (data.containsKey('embedding')) {
      context.handle(_embeddingMeta,
          embedding.isAcceptableOrUnknown(data['embedding']!, _embeddingMeta));
    } else if (isInserting) {
      context.missing(_embeddingMeta);
    }
    if (data.containsKey('model_version')) {
      context.handle(
          _modelVersionMeta,
          modelVersion.isAcceptableOrUnknown(
              data['model_version']!, _modelVersionMeta));
    } else if (isInserting) {
      context.missing(_modelVersionMeta);
    }
    if (data.containsKey('generated_at')) {
      context.handle(
          _generatedAtMeta,
          generatedAt.isAcceptableOrUnknown(
              data['generated_at']!, _generatedAtMeta));
    } else if (isInserting) {
      context.missing(_generatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SongEmbedding map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SongEmbedding(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_id'])!,
      embedding: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}embedding'])!,
      modelVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}model_version'])!,
      generatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}generated_at'])!,
    );
  }

  @override
  $SongEmbeddingsTable createAlias(String alias) {
    return $SongEmbeddingsTable(attachedDatabase, alias);
  }
}

class SongEmbedding extends DataClass implements Insertable<SongEmbedding> {
  final int id;
  final int hymnId;
  final Uint8List embedding;
  final String modelVersion;
  final int generatedAt;
  const SongEmbedding(
      {required this.id,
      required this.hymnId,
      required this.embedding,
      required this.modelVersion,
      required this.generatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hymn_id'] = Variable<int>(hymnId);
    map['embedding'] = Variable<Uint8List>(embedding);
    map['model_version'] = Variable<String>(modelVersion);
    map['generated_at'] = Variable<int>(generatedAt);
    return map;
  }

  SongEmbeddingsCompanion toCompanion(bool nullToAbsent) {
    return SongEmbeddingsCompanion(
      id: Value(id),
      hymnId: Value(hymnId),
      embedding: Value(embedding),
      modelVersion: Value(modelVersion),
      generatedAt: Value(generatedAt),
    );
  }

  factory SongEmbedding.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SongEmbedding(
      id: serializer.fromJson<int>(json['id']),
      hymnId: serializer.fromJson<int>(json['hymnId']),
      embedding: serializer.fromJson<Uint8List>(json['embedding']),
      modelVersion: serializer.fromJson<String>(json['modelVersion']),
      generatedAt: serializer.fromJson<int>(json['generatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hymnId': serializer.toJson<int>(hymnId),
      'embedding': serializer.toJson<Uint8List>(embedding),
      'modelVersion': serializer.toJson<String>(modelVersion),
      'generatedAt': serializer.toJson<int>(generatedAt),
    };
  }

  SongEmbedding copyWith(
          {int? id,
          int? hymnId,
          Uint8List? embedding,
          String? modelVersion,
          int? generatedAt}) =>
      SongEmbedding(
        id: id ?? this.id,
        hymnId: hymnId ?? this.hymnId,
        embedding: embedding ?? this.embedding,
        modelVersion: modelVersion ?? this.modelVersion,
        generatedAt: generatedAt ?? this.generatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SongEmbedding(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('embedding: $embedding, ')
          ..write('modelVersion: $modelVersion, ')
          ..write('generatedAt: $generatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hymnId,
      $driftBlobEquality.hash(embedding), modelVersion, generatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SongEmbedding &&
          other.id == this.id &&
          other.hymnId == this.hymnId &&
          $driftBlobEquality.equals(other.embedding, this.embedding) &&
          other.modelVersion == this.modelVersion &&
          other.generatedAt == this.generatedAt);
}

class SongEmbeddingsCompanion extends UpdateCompanion<SongEmbedding> {
  final Value<int> id;
  final Value<int> hymnId;
  final Value<Uint8List> embedding;
  final Value<String> modelVersion;
  final Value<int> generatedAt;
  const SongEmbeddingsCompanion({
    this.id = const Value.absent(),
    this.hymnId = const Value.absent(),
    this.embedding = const Value.absent(),
    this.modelVersion = const Value.absent(),
    this.generatedAt = const Value.absent(),
  });
  SongEmbeddingsCompanion.insert({
    this.id = const Value.absent(),
    required int hymnId,
    required Uint8List embedding,
    required String modelVersion,
    required int generatedAt,
  })  : hymnId = Value(hymnId),
        embedding = Value(embedding),
        modelVersion = Value(modelVersion),
        generatedAt = Value(generatedAt);
  static Insertable<SongEmbedding> custom({
    Expression<int>? id,
    Expression<int>? hymnId,
    Expression<Uint8List>? embedding,
    Expression<String>? modelVersion,
    Expression<int>? generatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hymnId != null) 'hymn_id': hymnId,
      if (embedding != null) 'embedding': embedding,
      if (modelVersion != null) 'model_version': modelVersion,
      if (generatedAt != null) 'generated_at': generatedAt,
    });
  }

  SongEmbeddingsCompanion copyWith(
      {Value<int>? id,
      Value<int>? hymnId,
      Value<Uint8List>? embedding,
      Value<String>? modelVersion,
      Value<int>? generatedAt}) {
    return SongEmbeddingsCompanion(
      id: id ?? this.id,
      hymnId: hymnId ?? this.hymnId,
      embedding: embedding ?? this.embedding,
      modelVersion: modelVersion ?? this.modelVersion,
      generatedAt: generatedAt ?? this.generatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hymnId.present) {
      map['hymn_id'] = Variable<int>(hymnId.value);
    }
    if (embedding.present) {
      map['embedding'] = Variable<Uint8List>(embedding.value);
    }
    if (modelVersion.present) {
      map['model_version'] = Variable<String>(modelVersion.value);
    }
    if (generatedAt.present) {
      map['generated_at'] = Variable<int>(generatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SongEmbeddingsCompanion(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('embedding: $embedding, ')
          ..write('modelVersion: $modelVersion, ')
          ..write('generatedAt: $generatedAt')
          ..write(')'))
        .toString();
  }
}

class $HymnsTable extends Hymns with TableInfo<$HymnsTable, Hymn> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HymnsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _collectionIdMeta =
      const VerificationMeta('collectionId');
  @override
  late final GeneratedColumn<int> collectionId = GeneratedColumn<int>(
      'collection_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES collections (id)'));
  static const VerificationMeta _hymnNumberMeta =
      const VerificationMeta('hymnNumber');
  @override
  late final GeneratedColumn<int> hymnNumber = GeneratedColumn<int>(
      'hymn_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleNormalizedMeta =
      const VerificationMeta('titleNormalized');
  @override
  late final GeneratedColumn<String> titleNormalized = GeneratedColumn<String>(
      'title_normalized', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstLineMeta =
      const VerificationMeta('firstLine');
  @override
  late final GeneratedColumn<String> firstLine = GeneratedColumn<String>(
      'first_line', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _firstLineNormalizedMeta =
      const VerificationMeta('firstLineNormalized');
  @override
  late final GeneratedColumn<String> firstLineNormalized =
      GeneratedColumn<String>('first_line_normalized', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tuneNameMeta =
      const VerificationMeta('tuneName');
  @override
  late final GeneratedColumn<String> tuneName = GeneratedColumn<String>(
      'tune_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _meterMeta = const VerificationMeta('meter');
  @override
  late final GeneratedColumn<String> meter = GeneratedColumn<String>(
      'meter', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _timeSignatureMeta =
      const VerificationMeta('timeSignature');
  @override
  late final GeneratedColumn<String> timeSignature = GeneratedColumn<String>(
      'time_signature', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _keySignatureMeta =
      const VerificationMeta('keySignature');
  @override
  late final GeneratedColumn<String> keySignature = GeneratedColumn<String>(
      'key_signature', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bpmDefaultMeta =
      const VerificationMeta('bpmDefault');
  @override
  late final GeneratedColumn<int> bpmDefault = GeneratedColumn<int>(
      'bpm_default', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _composerIdMeta =
      const VerificationMeta('composerId');
  @override
  late final GeneratedColumn<int> composerId = GeneratedColumn<int>(
      'composer_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES persons (id)'));
  static const VerificationMeta _lyricistIdMeta =
      const VerificationMeta('lyricistId');
  @override
  late final GeneratedColumn<int> lyricistId = GeneratedColumn<int>(
      'lyricist_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES persons (id)'));
  static const VerificationMeta _yearComposedMeta =
      const VerificationMeta('yearComposed');
  @override
  late final GeneratedColumn<int> yearComposed = GeneratedColumn<int>(
      'year_composed', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _yearPublishedSdaMeta =
      const VerificationMeta('yearPublishedSda');
  @override
  late final GeneratedColumn<int> yearPublishedSda = GeneratedColumn<int>(
      'year_published_sda', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _scriptureRefsMeta =
      const VerificationMeta('scriptureRefs');
  @override
  late final GeneratedColumn<String> scriptureRefs = GeneratedColumn<String>(
      'scripture_refs', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _occasionsMeta =
      const VerificationMeta('occasions');
  @override
  late final GeneratedColumn<String> occasions = GeneratedColumn<String>(
      'occasions', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('["GENERAL"]'));
  static const VerificationMeta _emotionalTonesMeta =
      const VerificationMeta('emotionalTones');
  @override
  late final GeneratedColumn<String> emotionalTones = GeneratedColumn<String>(
      'emotional_tones', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tempoCategoryMeta =
      const VerificationMeta('tempoCategory');
  @override
  late final GeneratedColumn<String> tempoCategory = GeneratedColumn<String>(
      'tempo_category', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('MEDIUM'));
  static const VerificationMeta _tempoMarkingMeta =
      const VerificationMeta('tempoMarking');
  @override
  late final GeneratedColumn<String> tempoMarking = GeneratedColumn<String>(
      'tempo_marking', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<String> difficulty = GeneratedColumn<String>(
      'difficulty', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('CONGREGATIONAL'));
  static const VerificationMeta _voicingMeta =
      const VerificationMeta('voicing');
  @override
  late final GeneratedColumn<String> voicing = GeneratedColumn<String>(
      'voicing', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('SATB'));
  static const VerificationMeta _copyrightStatusMeta =
      const VerificationMeta('copyrightStatus');
  @override
  late final GeneratedColumn<String> copyrightStatus = GeneratedColumn<String>(
      'copyright_status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('PUBLIC_DOMAIN'));
  static const VerificationMeta _copyrightOwnerMeta =
      const VerificationMeta('copyrightOwner');
  @override
  late final GeneratedColumn<String> copyrightOwner = GeneratedColumn<String>(
      'copyright_owner', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _midiAssetPathMeta =
      const VerificationMeta('midiAssetPath');
  @override
  late final GeneratedColumn<String> midiAssetPath = GeneratedColumn<String>(
      'midi_asset_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hasMidiMeta =
      const VerificationMeta('hasMidi');
  @override
  late final GeneratedColumn<bool> hasMidi = GeneratedColumn<bool>(
      'has_midi', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("has_midi" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _hasChordsMeta =
      const VerificationMeta('hasChords');
  @override
  late final GeneratedColumn<bool> hasChords = GeneratedColumn<bool>(
      'has_chords', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("has_chords" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _chordDataMeta =
      const VerificationMeta('chordData');
  @override
  late final GeneratedColumn<String> chordData = GeneratedColumn<String>(
      'chord_data', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isRedLetterSpecialMeta =
      const VerificationMeta('isRedLetterSpecial');
  @override
  late final GeneratedColumn<bool> isRedLetterSpecial = GeneratedColumn<bool>(
      'is_red_letter_special', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_red_letter_special" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _dialectMeta =
      const VerificationMeta('dialect');
  @override
  late final GeneratedColumn<String> dialect = GeneratedColumn<String>(
      'dialect', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sourceAttributionMeta =
      const VerificationMeta('sourceAttribution');
  @override
  late final GeneratedColumn<String> sourceAttribution =
      GeneratedColumn<String>('source_attribution', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isCommunityContributedMeta =
      const VerificationMeta('isCommunityContributed');
  @override
  late final GeneratedColumn<bool> isCommunityContributed =
      GeneratedColumn<bool>('is_community_contributed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("is_community_contributed" IN (0, 1))'),
          defaultValue: const Constant(false));
  static const VerificationMeta _contributorIdMeta =
      const VerificationMeta('contributorId');
  @override
  late final GeneratedColumn<int> contributorId = GeneratedColumn<int>(
      'contributor_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _embeddingIdMeta =
      const VerificationMeta('embeddingId');
  @override
  late final GeneratedColumn<int> embeddingId = GeneratedColumn<int>(
      'embedding_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES song_embeddings (id)'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _useCountMeta =
      const VerificationMeta('useCount');
  @override
  late final GeneratedColumn<int> useCount = GeneratedColumn<int>(
      'use_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastUsedMeta =
      const VerificationMeta('lastUsed');
  @override
  late final GeneratedColumn<int> lastUsed = GeneratedColumn<int>(
      'last_used', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        collectionId,
        hymnNumber,
        title,
        titleNormalized,
        firstLine,
        firstLineNormalized,
        tuneName,
        meter,
        timeSignature,
        keySignature,
        bpmDefault,
        composerId,
        lyricistId,
        yearComposed,
        yearPublishedSda,
        scriptureRefs,
        occasions,
        emotionalTones,
        tempoCategory,
        tempoMarking,
        difficulty,
        voicing,
        copyrightStatus,
        copyrightOwner,
        midiAssetPath,
        hasMidi,
        hasChords,
        chordData,
        isRedLetterSpecial,
        dialect,
        sourceAttribution,
        isCommunityContributed,
        contributorId,
        embeddingId,
        createdAt,
        updatedAt,
        useCount,
        lastUsed
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hymns';
  @override
  VerificationContext validateIntegrity(Insertable<Hymn> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('collection_id')) {
      context.handle(
          _collectionIdMeta,
          collectionId.isAcceptableOrUnknown(
              data['collection_id']!, _collectionIdMeta));
    } else if (isInserting) {
      context.missing(_collectionIdMeta);
    }
    if (data.containsKey('hymn_number')) {
      context.handle(
          _hymnNumberMeta,
          hymnNumber.isAcceptableOrUnknown(
              data['hymn_number']!, _hymnNumberMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('title_normalized')) {
      context.handle(
          _titleNormalizedMeta,
          titleNormalized.isAcceptableOrUnknown(
              data['title_normalized']!, _titleNormalizedMeta));
    } else if (isInserting) {
      context.missing(_titleNormalizedMeta);
    }
    if (data.containsKey('first_line')) {
      context.handle(_firstLineMeta,
          firstLine.isAcceptableOrUnknown(data['first_line']!, _firstLineMeta));
    }
    if (data.containsKey('first_line_normalized')) {
      context.handle(
          _firstLineNormalizedMeta,
          firstLineNormalized.isAcceptableOrUnknown(
              data['first_line_normalized']!, _firstLineNormalizedMeta));
    }
    if (data.containsKey('tune_name')) {
      context.handle(_tuneNameMeta,
          tuneName.isAcceptableOrUnknown(data['tune_name']!, _tuneNameMeta));
    }
    if (data.containsKey('meter')) {
      context.handle(
          _meterMeta, meter.isAcceptableOrUnknown(data['meter']!, _meterMeta));
    }
    if (data.containsKey('time_signature')) {
      context.handle(
          _timeSignatureMeta,
          timeSignature.isAcceptableOrUnknown(
              data['time_signature']!, _timeSignatureMeta));
    }
    if (data.containsKey('key_signature')) {
      context.handle(
          _keySignatureMeta,
          keySignature.isAcceptableOrUnknown(
              data['key_signature']!, _keySignatureMeta));
    }
    if (data.containsKey('bpm_default')) {
      context.handle(
          _bpmDefaultMeta,
          bpmDefault.isAcceptableOrUnknown(
              data['bpm_default']!, _bpmDefaultMeta));
    }
    if (data.containsKey('composer_id')) {
      context.handle(
          _composerIdMeta,
          composerId.isAcceptableOrUnknown(
              data['composer_id']!, _composerIdMeta));
    }
    if (data.containsKey('lyricist_id')) {
      context.handle(
          _lyricistIdMeta,
          lyricistId.isAcceptableOrUnknown(
              data['lyricist_id']!, _lyricistIdMeta));
    }
    if (data.containsKey('year_composed')) {
      context.handle(
          _yearComposedMeta,
          yearComposed.isAcceptableOrUnknown(
              data['year_composed']!, _yearComposedMeta));
    }
    if (data.containsKey('year_published_sda')) {
      context.handle(
          _yearPublishedSdaMeta,
          yearPublishedSda.isAcceptableOrUnknown(
              data['year_published_sda']!, _yearPublishedSdaMeta));
    }
    if (data.containsKey('scripture_refs')) {
      context.handle(
          _scriptureRefsMeta,
          scriptureRefs.isAcceptableOrUnknown(
              data['scripture_refs']!, _scriptureRefsMeta));
    }
    if (data.containsKey('occasions')) {
      context.handle(_occasionsMeta,
          occasions.isAcceptableOrUnknown(data['occasions']!, _occasionsMeta));
    }
    if (data.containsKey('emotional_tones')) {
      context.handle(
          _emotionalTonesMeta,
          emotionalTones.isAcceptableOrUnknown(
              data['emotional_tones']!, _emotionalTonesMeta));
    }
    if (data.containsKey('tempo_category')) {
      context.handle(
          _tempoCategoryMeta,
          tempoCategory.isAcceptableOrUnknown(
              data['tempo_category']!, _tempoCategoryMeta));
    }
    if (data.containsKey('tempo_marking')) {
      context.handle(
          _tempoMarkingMeta,
          tempoMarking.isAcceptableOrUnknown(
              data['tempo_marking']!, _tempoMarkingMeta));
    }
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    }
    if (data.containsKey('voicing')) {
      context.handle(_voicingMeta,
          voicing.isAcceptableOrUnknown(data['voicing']!, _voicingMeta));
    }
    if (data.containsKey('copyright_status')) {
      context.handle(
          _copyrightStatusMeta,
          copyrightStatus.isAcceptableOrUnknown(
              data['copyright_status']!, _copyrightStatusMeta));
    }
    if (data.containsKey('copyright_owner')) {
      context.handle(
          _copyrightOwnerMeta,
          copyrightOwner.isAcceptableOrUnknown(
              data['copyright_owner']!, _copyrightOwnerMeta));
    }
    if (data.containsKey('midi_asset_path')) {
      context.handle(
          _midiAssetPathMeta,
          midiAssetPath.isAcceptableOrUnknown(
              data['midi_asset_path']!, _midiAssetPathMeta));
    }
    if (data.containsKey('has_midi')) {
      context.handle(_hasMidiMeta,
          hasMidi.isAcceptableOrUnknown(data['has_midi']!, _hasMidiMeta));
    }
    if (data.containsKey('has_chords')) {
      context.handle(_hasChordsMeta,
          hasChords.isAcceptableOrUnknown(data['has_chords']!, _hasChordsMeta));
    }
    if (data.containsKey('chord_data')) {
      context.handle(_chordDataMeta,
          chordData.isAcceptableOrUnknown(data['chord_data']!, _chordDataMeta));
    }
    if (data.containsKey('is_red_letter_special')) {
      context.handle(
          _isRedLetterSpecialMeta,
          isRedLetterSpecial.isAcceptableOrUnknown(
              data['is_red_letter_special']!, _isRedLetterSpecialMeta));
    }
    if (data.containsKey('dialect')) {
      context.handle(_dialectMeta,
          dialect.isAcceptableOrUnknown(data['dialect']!, _dialectMeta));
    }
    if (data.containsKey('source_attribution')) {
      context.handle(
          _sourceAttributionMeta,
          sourceAttribution.isAcceptableOrUnknown(
              data['source_attribution']!, _sourceAttributionMeta));
    }
    if (data.containsKey('is_community_contributed')) {
      context.handle(
          _isCommunityContributedMeta,
          isCommunityContributed.isAcceptableOrUnknown(
              data['is_community_contributed']!, _isCommunityContributedMeta));
    }
    if (data.containsKey('contributor_id')) {
      context.handle(
          _contributorIdMeta,
          contributorId.isAcceptableOrUnknown(
              data['contributor_id']!, _contributorIdMeta));
    }
    if (data.containsKey('embedding_id')) {
      context.handle(
          _embeddingIdMeta,
          embeddingId.isAcceptableOrUnknown(
              data['embedding_id']!, _embeddingIdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('use_count')) {
      context.handle(_useCountMeta,
          useCount.isAcceptableOrUnknown(data['use_count']!, _useCountMeta));
    }
    if (data.containsKey('last_used')) {
      context.handle(_lastUsedMeta,
          lastUsed.isAcceptableOrUnknown(data['last_used']!, _lastUsedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Hymn map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Hymn(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      collectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}collection_id'])!,
      hymnNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_number']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      titleNormalized: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}title_normalized'])!,
      firstLine: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_line']),
      firstLineNormalized: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}first_line_normalized']),
      tuneName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tune_name']),
      meter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}meter']),
      timeSignature: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time_signature']),
      keySignature: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key_signature']),
      bpmDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}bpm_default']),
      composerId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}composer_id']),
      lyricistId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}lyricist_id']),
      yearComposed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year_composed']),
      yearPublishedSda: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year_published_sda']),
      scriptureRefs: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scripture_refs']),
      occasions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}occasions'])!,
      emotionalTones: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emotional_tones']),
      tempoCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tempo_category'])!,
      tempoMarking: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tempo_marking']),
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}difficulty'])!,
      voicing: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}voicing'])!,
      copyrightStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}copyright_status'])!,
      copyrightOwner: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}copyright_owner']),
      midiAssetPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}midi_asset_path']),
      hasMidi: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_midi'])!,
      hasChords: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_chords'])!,
      chordData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chord_data']),
      isRedLetterSpecial: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_red_letter_special'])!,
      dialect: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dialect']),
      sourceAttribution: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}source_attribution']),
      isCommunityContributed: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}is_community_contributed'])!,
      contributorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}contributor_id']),
      embeddingId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}embedding_id']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
      useCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}use_count'])!,
      lastUsed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_used']),
    );
  }

  @override
  $HymnsTable createAlias(String alias) {
    return $HymnsTable(attachedDatabase, alias);
  }
}

class Hymn extends DataClass implements Insertable<Hymn> {
  final int id;
  final int collectionId;
  final int? hymnNumber;
  final String title;
  final String titleNormalized;
  final String? firstLine;
  final String? firstLineNormalized;
  final String? tuneName;
  final String? meter;
  final String? timeSignature;
  final String? keySignature;
  final int? bpmDefault;
  final int? composerId;
  final int? lyricistId;
  final int? yearComposed;
  final int? yearPublishedSda;
  final String? scriptureRefs;
  final String occasions;
  final String? emotionalTones;
  final String tempoCategory;
  final String? tempoMarking;
  final String difficulty;
  final String voicing;
  final String copyrightStatus;
  final String? copyrightOwner;
  final String? midiAssetPath;
  final bool hasMidi;
  final bool hasChords;
  final String? chordData;
  final bool isRedLetterSpecial;
  final String? dialect;
  final String? sourceAttribution;
  final bool isCommunityContributed;
  final int? contributorId;
  final int? embeddingId;
  final int createdAt;
  final int updatedAt;
  final int useCount;
  final int? lastUsed;
  const Hymn(
      {required this.id,
      required this.collectionId,
      this.hymnNumber,
      required this.title,
      required this.titleNormalized,
      this.firstLine,
      this.firstLineNormalized,
      this.tuneName,
      this.meter,
      this.timeSignature,
      this.keySignature,
      this.bpmDefault,
      this.composerId,
      this.lyricistId,
      this.yearComposed,
      this.yearPublishedSda,
      this.scriptureRefs,
      required this.occasions,
      this.emotionalTones,
      required this.tempoCategory,
      this.tempoMarking,
      required this.difficulty,
      required this.voicing,
      required this.copyrightStatus,
      this.copyrightOwner,
      this.midiAssetPath,
      required this.hasMidi,
      required this.hasChords,
      this.chordData,
      required this.isRedLetterSpecial,
      this.dialect,
      this.sourceAttribution,
      required this.isCommunityContributed,
      this.contributorId,
      this.embeddingId,
      required this.createdAt,
      required this.updatedAt,
      required this.useCount,
      this.lastUsed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['collection_id'] = Variable<int>(collectionId);
    if (!nullToAbsent || hymnNumber != null) {
      map['hymn_number'] = Variable<int>(hymnNumber);
    }
    map['title'] = Variable<String>(title);
    map['title_normalized'] = Variable<String>(titleNormalized);
    if (!nullToAbsent || firstLine != null) {
      map['first_line'] = Variable<String>(firstLine);
    }
    if (!nullToAbsent || firstLineNormalized != null) {
      map['first_line_normalized'] = Variable<String>(firstLineNormalized);
    }
    if (!nullToAbsent || tuneName != null) {
      map['tune_name'] = Variable<String>(tuneName);
    }
    if (!nullToAbsent || meter != null) {
      map['meter'] = Variable<String>(meter);
    }
    if (!nullToAbsent || timeSignature != null) {
      map['time_signature'] = Variable<String>(timeSignature);
    }
    if (!nullToAbsent || keySignature != null) {
      map['key_signature'] = Variable<String>(keySignature);
    }
    if (!nullToAbsent || bpmDefault != null) {
      map['bpm_default'] = Variable<int>(bpmDefault);
    }
    if (!nullToAbsent || composerId != null) {
      map['composer_id'] = Variable<int>(composerId);
    }
    if (!nullToAbsent || lyricistId != null) {
      map['lyricist_id'] = Variable<int>(lyricistId);
    }
    if (!nullToAbsent || yearComposed != null) {
      map['year_composed'] = Variable<int>(yearComposed);
    }
    if (!nullToAbsent || yearPublishedSda != null) {
      map['year_published_sda'] = Variable<int>(yearPublishedSda);
    }
    if (!nullToAbsent || scriptureRefs != null) {
      map['scripture_refs'] = Variable<String>(scriptureRefs);
    }
    map['occasions'] = Variable<String>(occasions);
    if (!nullToAbsent || emotionalTones != null) {
      map['emotional_tones'] = Variable<String>(emotionalTones);
    }
    map['tempo_category'] = Variable<String>(tempoCategory);
    if (!nullToAbsent || tempoMarking != null) {
      map['tempo_marking'] = Variable<String>(tempoMarking);
    }
    map['difficulty'] = Variable<String>(difficulty);
    map['voicing'] = Variable<String>(voicing);
    map['copyright_status'] = Variable<String>(copyrightStatus);
    if (!nullToAbsent || copyrightOwner != null) {
      map['copyright_owner'] = Variable<String>(copyrightOwner);
    }
    if (!nullToAbsent || midiAssetPath != null) {
      map['midi_asset_path'] = Variable<String>(midiAssetPath);
    }
    map['has_midi'] = Variable<bool>(hasMidi);
    map['has_chords'] = Variable<bool>(hasChords);
    if (!nullToAbsent || chordData != null) {
      map['chord_data'] = Variable<String>(chordData);
    }
    map['is_red_letter_special'] = Variable<bool>(isRedLetterSpecial);
    if (!nullToAbsent || dialect != null) {
      map['dialect'] = Variable<String>(dialect);
    }
    if (!nullToAbsent || sourceAttribution != null) {
      map['source_attribution'] = Variable<String>(sourceAttribution);
    }
    map['is_community_contributed'] = Variable<bool>(isCommunityContributed);
    if (!nullToAbsent || contributorId != null) {
      map['contributor_id'] = Variable<int>(contributorId);
    }
    if (!nullToAbsent || embeddingId != null) {
      map['embedding_id'] = Variable<int>(embeddingId);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    map['use_count'] = Variable<int>(useCount);
    if (!nullToAbsent || lastUsed != null) {
      map['last_used'] = Variable<int>(lastUsed);
    }
    return map;
  }

  HymnsCompanion toCompanion(bool nullToAbsent) {
    return HymnsCompanion(
      id: Value(id),
      collectionId: Value(collectionId),
      hymnNumber: hymnNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(hymnNumber),
      title: Value(title),
      titleNormalized: Value(titleNormalized),
      firstLine: firstLine == null && nullToAbsent
          ? const Value.absent()
          : Value(firstLine),
      firstLineNormalized: firstLineNormalized == null && nullToAbsent
          ? const Value.absent()
          : Value(firstLineNormalized),
      tuneName: tuneName == null && nullToAbsent
          ? const Value.absent()
          : Value(tuneName),
      meter:
          meter == null && nullToAbsent ? const Value.absent() : Value(meter),
      timeSignature: timeSignature == null && nullToAbsent
          ? const Value.absent()
          : Value(timeSignature),
      keySignature: keySignature == null && nullToAbsent
          ? const Value.absent()
          : Value(keySignature),
      bpmDefault: bpmDefault == null && nullToAbsent
          ? const Value.absent()
          : Value(bpmDefault),
      composerId: composerId == null && nullToAbsent
          ? const Value.absent()
          : Value(composerId),
      lyricistId: lyricistId == null && nullToAbsent
          ? const Value.absent()
          : Value(lyricistId),
      yearComposed: yearComposed == null && nullToAbsent
          ? const Value.absent()
          : Value(yearComposed),
      yearPublishedSda: yearPublishedSda == null && nullToAbsent
          ? const Value.absent()
          : Value(yearPublishedSda),
      scriptureRefs: scriptureRefs == null && nullToAbsent
          ? const Value.absent()
          : Value(scriptureRefs),
      occasions: Value(occasions),
      emotionalTones: emotionalTones == null && nullToAbsent
          ? const Value.absent()
          : Value(emotionalTones),
      tempoCategory: Value(tempoCategory),
      tempoMarking: tempoMarking == null && nullToAbsent
          ? const Value.absent()
          : Value(tempoMarking),
      difficulty: Value(difficulty),
      voicing: Value(voicing),
      copyrightStatus: Value(copyrightStatus),
      copyrightOwner: copyrightOwner == null && nullToAbsent
          ? const Value.absent()
          : Value(copyrightOwner),
      midiAssetPath: midiAssetPath == null && nullToAbsent
          ? const Value.absent()
          : Value(midiAssetPath),
      hasMidi: Value(hasMidi),
      hasChords: Value(hasChords),
      chordData: chordData == null && nullToAbsent
          ? const Value.absent()
          : Value(chordData),
      isRedLetterSpecial: Value(isRedLetterSpecial),
      dialect: dialect == null && nullToAbsent
          ? const Value.absent()
          : Value(dialect),
      sourceAttribution: sourceAttribution == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceAttribution),
      isCommunityContributed: Value(isCommunityContributed),
      contributorId: contributorId == null && nullToAbsent
          ? const Value.absent()
          : Value(contributorId),
      embeddingId: embeddingId == null && nullToAbsent
          ? const Value.absent()
          : Value(embeddingId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      useCount: Value(useCount),
      lastUsed: lastUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUsed),
    );
  }

  factory Hymn.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Hymn(
      id: serializer.fromJson<int>(json['id']),
      collectionId: serializer.fromJson<int>(json['collectionId']),
      hymnNumber: serializer.fromJson<int?>(json['hymnNumber']),
      title: serializer.fromJson<String>(json['title']),
      titleNormalized: serializer.fromJson<String>(json['titleNormalized']),
      firstLine: serializer.fromJson<String?>(json['firstLine']),
      firstLineNormalized:
          serializer.fromJson<String?>(json['firstLineNormalized']),
      tuneName: serializer.fromJson<String?>(json['tuneName']),
      meter: serializer.fromJson<String?>(json['meter']),
      timeSignature: serializer.fromJson<String?>(json['timeSignature']),
      keySignature: serializer.fromJson<String?>(json['keySignature']),
      bpmDefault: serializer.fromJson<int?>(json['bpmDefault']),
      composerId: serializer.fromJson<int?>(json['composerId']),
      lyricistId: serializer.fromJson<int?>(json['lyricistId']),
      yearComposed: serializer.fromJson<int?>(json['yearComposed']),
      yearPublishedSda: serializer.fromJson<int?>(json['yearPublishedSda']),
      scriptureRefs: serializer.fromJson<String?>(json['scriptureRefs']),
      occasions: serializer.fromJson<String>(json['occasions']),
      emotionalTones: serializer.fromJson<String?>(json['emotionalTones']),
      tempoCategory: serializer.fromJson<String>(json['tempoCategory']),
      tempoMarking: serializer.fromJson<String?>(json['tempoMarking']),
      difficulty: serializer.fromJson<String>(json['difficulty']),
      voicing: serializer.fromJson<String>(json['voicing']),
      copyrightStatus: serializer.fromJson<String>(json['copyrightStatus']),
      copyrightOwner: serializer.fromJson<String?>(json['copyrightOwner']),
      midiAssetPath: serializer.fromJson<String?>(json['midiAssetPath']),
      hasMidi: serializer.fromJson<bool>(json['hasMidi']),
      hasChords: serializer.fromJson<bool>(json['hasChords']),
      chordData: serializer.fromJson<String?>(json['chordData']),
      isRedLetterSpecial: serializer.fromJson<bool>(json['isRedLetterSpecial']),
      dialect: serializer.fromJson<String?>(json['dialect']),
      sourceAttribution:
          serializer.fromJson<String?>(json['sourceAttribution']),
      isCommunityContributed:
          serializer.fromJson<bool>(json['isCommunityContributed']),
      contributorId: serializer.fromJson<int?>(json['contributorId']),
      embeddingId: serializer.fromJson<int?>(json['embeddingId']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
      useCount: serializer.fromJson<int>(json['useCount']),
      lastUsed: serializer.fromJson<int?>(json['lastUsed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'collectionId': serializer.toJson<int>(collectionId),
      'hymnNumber': serializer.toJson<int?>(hymnNumber),
      'title': serializer.toJson<String>(title),
      'titleNormalized': serializer.toJson<String>(titleNormalized),
      'firstLine': serializer.toJson<String?>(firstLine),
      'firstLineNormalized': serializer.toJson<String?>(firstLineNormalized),
      'tuneName': serializer.toJson<String?>(tuneName),
      'meter': serializer.toJson<String?>(meter),
      'timeSignature': serializer.toJson<String?>(timeSignature),
      'keySignature': serializer.toJson<String?>(keySignature),
      'bpmDefault': serializer.toJson<int?>(bpmDefault),
      'composerId': serializer.toJson<int?>(composerId),
      'lyricistId': serializer.toJson<int?>(lyricistId),
      'yearComposed': serializer.toJson<int?>(yearComposed),
      'yearPublishedSda': serializer.toJson<int?>(yearPublishedSda),
      'scriptureRefs': serializer.toJson<String?>(scriptureRefs),
      'occasions': serializer.toJson<String>(occasions),
      'emotionalTones': serializer.toJson<String?>(emotionalTones),
      'tempoCategory': serializer.toJson<String>(tempoCategory),
      'tempoMarking': serializer.toJson<String?>(tempoMarking),
      'difficulty': serializer.toJson<String>(difficulty),
      'voicing': serializer.toJson<String>(voicing),
      'copyrightStatus': serializer.toJson<String>(copyrightStatus),
      'copyrightOwner': serializer.toJson<String?>(copyrightOwner),
      'midiAssetPath': serializer.toJson<String?>(midiAssetPath),
      'hasMidi': serializer.toJson<bool>(hasMidi),
      'hasChords': serializer.toJson<bool>(hasChords),
      'chordData': serializer.toJson<String?>(chordData),
      'isRedLetterSpecial': serializer.toJson<bool>(isRedLetterSpecial),
      'dialect': serializer.toJson<String?>(dialect),
      'sourceAttribution': serializer.toJson<String?>(sourceAttribution),
      'isCommunityContributed': serializer.toJson<bool>(isCommunityContributed),
      'contributorId': serializer.toJson<int?>(contributorId),
      'embeddingId': serializer.toJson<int?>(embeddingId),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
      'useCount': serializer.toJson<int>(useCount),
      'lastUsed': serializer.toJson<int?>(lastUsed),
    };
  }

  Hymn copyWith(
          {int? id,
          int? collectionId,
          Value<int?> hymnNumber = const Value.absent(),
          String? title,
          String? titleNormalized,
          Value<String?> firstLine = const Value.absent(),
          Value<String?> firstLineNormalized = const Value.absent(),
          Value<String?> tuneName = const Value.absent(),
          Value<String?> meter = const Value.absent(),
          Value<String?> timeSignature = const Value.absent(),
          Value<String?> keySignature = const Value.absent(),
          Value<int?> bpmDefault = const Value.absent(),
          Value<int?> composerId = const Value.absent(),
          Value<int?> lyricistId = const Value.absent(),
          Value<int?> yearComposed = const Value.absent(),
          Value<int?> yearPublishedSda = const Value.absent(),
          Value<String?> scriptureRefs = const Value.absent(),
          String? occasions,
          Value<String?> emotionalTones = const Value.absent(),
          String? tempoCategory,
          Value<String?> tempoMarking = const Value.absent(),
          String? difficulty,
          String? voicing,
          String? copyrightStatus,
          Value<String?> copyrightOwner = const Value.absent(),
          Value<String?> midiAssetPath = const Value.absent(),
          bool? hasMidi,
          bool? hasChords,
          Value<String?> chordData = const Value.absent(),
          bool? isRedLetterSpecial,
          Value<String?> dialect = const Value.absent(),
          Value<String?> sourceAttribution = const Value.absent(),
          bool? isCommunityContributed,
          Value<int?> contributorId = const Value.absent(),
          Value<int?> embeddingId = const Value.absent(),
          int? createdAt,
          int? updatedAt,
          int? useCount,
          Value<int?> lastUsed = const Value.absent()}) =>
      Hymn(
        id: id ?? this.id,
        collectionId: collectionId ?? this.collectionId,
        hymnNumber: hymnNumber.present ? hymnNumber.value : this.hymnNumber,
        title: title ?? this.title,
        titleNormalized: titleNormalized ?? this.titleNormalized,
        firstLine: firstLine.present ? firstLine.value : this.firstLine,
        firstLineNormalized: firstLineNormalized.present
            ? firstLineNormalized.value
            : this.firstLineNormalized,
        tuneName: tuneName.present ? tuneName.value : this.tuneName,
        meter: meter.present ? meter.value : this.meter,
        timeSignature:
            timeSignature.present ? timeSignature.value : this.timeSignature,
        keySignature:
            keySignature.present ? keySignature.value : this.keySignature,
        bpmDefault: bpmDefault.present ? bpmDefault.value : this.bpmDefault,
        composerId: composerId.present ? composerId.value : this.composerId,
        lyricistId: lyricistId.present ? lyricistId.value : this.lyricistId,
        yearComposed:
            yearComposed.present ? yearComposed.value : this.yearComposed,
        yearPublishedSda: yearPublishedSda.present
            ? yearPublishedSda.value
            : this.yearPublishedSda,
        scriptureRefs:
            scriptureRefs.present ? scriptureRefs.value : this.scriptureRefs,
        occasions: occasions ?? this.occasions,
        emotionalTones:
            emotionalTones.present ? emotionalTones.value : this.emotionalTones,
        tempoCategory: tempoCategory ?? this.tempoCategory,
        tempoMarking:
            tempoMarking.present ? tempoMarking.value : this.tempoMarking,
        difficulty: difficulty ?? this.difficulty,
        voicing: voicing ?? this.voicing,
        copyrightStatus: copyrightStatus ?? this.copyrightStatus,
        copyrightOwner:
            copyrightOwner.present ? copyrightOwner.value : this.copyrightOwner,
        midiAssetPath:
            midiAssetPath.present ? midiAssetPath.value : this.midiAssetPath,
        hasMidi: hasMidi ?? this.hasMidi,
        hasChords: hasChords ?? this.hasChords,
        chordData: chordData.present ? chordData.value : this.chordData,
        isRedLetterSpecial: isRedLetterSpecial ?? this.isRedLetterSpecial,
        dialect: dialect.present ? dialect.value : this.dialect,
        sourceAttribution: sourceAttribution.present
            ? sourceAttribution.value
            : this.sourceAttribution,
        isCommunityContributed:
            isCommunityContributed ?? this.isCommunityContributed,
        contributorId:
            contributorId.present ? contributorId.value : this.contributorId,
        embeddingId: embeddingId.present ? embeddingId.value : this.embeddingId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        useCount: useCount ?? this.useCount,
        lastUsed: lastUsed.present ? lastUsed.value : this.lastUsed,
      );
  @override
  String toString() {
    return (StringBuffer('Hymn(')
          ..write('id: $id, ')
          ..write('collectionId: $collectionId, ')
          ..write('hymnNumber: $hymnNumber, ')
          ..write('title: $title, ')
          ..write('titleNormalized: $titleNormalized, ')
          ..write('firstLine: $firstLine, ')
          ..write('firstLineNormalized: $firstLineNormalized, ')
          ..write('tuneName: $tuneName, ')
          ..write('meter: $meter, ')
          ..write('timeSignature: $timeSignature, ')
          ..write('keySignature: $keySignature, ')
          ..write('bpmDefault: $bpmDefault, ')
          ..write('composerId: $composerId, ')
          ..write('lyricistId: $lyricistId, ')
          ..write('yearComposed: $yearComposed, ')
          ..write('yearPublishedSda: $yearPublishedSda, ')
          ..write('scriptureRefs: $scriptureRefs, ')
          ..write('occasions: $occasions, ')
          ..write('emotionalTones: $emotionalTones, ')
          ..write('tempoCategory: $tempoCategory, ')
          ..write('tempoMarking: $tempoMarking, ')
          ..write('difficulty: $difficulty, ')
          ..write('voicing: $voicing, ')
          ..write('copyrightStatus: $copyrightStatus, ')
          ..write('copyrightOwner: $copyrightOwner, ')
          ..write('midiAssetPath: $midiAssetPath, ')
          ..write('hasMidi: $hasMidi, ')
          ..write('hasChords: $hasChords, ')
          ..write('chordData: $chordData, ')
          ..write('isRedLetterSpecial: $isRedLetterSpecial, ')
          ..write('dialect: $dialect, ')
          ..write('sourceAttribution: $sourceAttribution, ')
          ..write('isCommunityContributed: $isCommunityContributed, ')
          ..write('contributorId: $contributorId, ')
          ..write('embeddingId: $embeddingId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('useCount: $useCount, ')
          ..write('lastUsed: $lastUsed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        collectionId,
        hymnNumber,
        title,
        titleNormalized,
        firstLine,
        firstLineNormalized,
        tuneName,
        meter,
        timeSignature,
        keySignature,
        bpmDefault,
        composerId,
        lyricistId,
        yearComposed,
        yearPublishedSda,
        scriptureRefs,
        occasions,
        emotionalTones,
        tempoCategory,
        tempoMarking,
        difficulty,
        voicing,
        copyrightStatus,
        copyrightOwner,
        midiAssetPath,
        hasMidi,
        hasChords,
        chordData,
        isRedLetterSpecial,
        dialect,
        sourceAttribution,
        isCommunityContributed,
        contributorId,
        embeddingId,
        createdAt,
        updatedAt,
        useCount,
        lastUsed
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Hymn &&
          other.id == this.id &&
          other.collectionId == this.collectionId &&
          other.hymnNumber == this.hymnNumber &&
          other.title == this.title &&
          other.titleNormalized == this.titleNormalized &&
          other.firstLine == this.firstLine &&
          other.firstLineNormalized == this.firstLineNormalized &&
          other.tuneName == this.tuneName &&
          other.meter == this.meter &&
          other.timeSignature == this.timeSignature &&
          other.keySignature == this.keySignature &&
          other.bpmDefault == this.bpmDefault &&
          other.composerId == this.composerId &&
          other.lyricistId == this.lyricistId &&
          other.yearComposed == this.yearComposed &&
          other.yearPublishedSda == this.yearPublishedSda &&
          other.scriptureRefs == this.scriptureRefs &&
          other.occasions == this.occasions &&
          other.emotionalTones == this.emotionalTones &&
          other.tempoCategory == this.tempoCategory &&
          other.tempoMarking == this.tempoMarking &&
          other.difficulty == this.difficulty &&
          other.voicing == this.voicing &&
          other.copyrightStatus == this.copyrightStatus &&
          other.copyrightOwner == this.copyrightOwner &&
          other.midiAssetPath == this.midiAssetPath &&
          other.hasMidi == this.hasMidi &&
          other.hasChords == this.hasChords &&
          other.chordData == this.chordData &&
          other.isRedLetterSpecial == this.isRedLetterSpecial &&
          other.dialect == this.dialect &&
          other.sourceAttribution == this.sourceAttribution &&
          other.isCommunityContributed == this.isCommunityContributed &&
          other.contributorId == this.contributorId &&
          other.embeddingId == this.embeddingId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.useCount == this.useCount &&
          other.lastUsed == this.lastUsed);
}

class HymnsCompanion extends UpdateCompanion<Hymn> {
  final Value<int> id;
  final Value<int> collectionId;
  final Value<int?> hymnNumber;
  final Value<String> title;
  final Value<String> titleNormalized;
  final Value<String?> firstLine;
  final Value<String?> firstLineNormalized;
  final Value<String?> tuneName;
  final Value<String?> meter;
  final Value<String?> timeSignature;
  final Value<String?> keySignature;
  final Value<int?> bpmDefault;
  final Value<int?> composerId;
  final Value<int?> lyricistId;
  final Value<int?> yearComposed;
  final Value<int?> yearPublishedSda;
  final Value<String?> scriptureRefs;
  final Value<String> occasions;
  final Value<String?> emotionalTones;
  final Value<String> tempoCategory;
  final Value<String?> tempoMarking;
  final Value<String> difficulty;
  final Value<String> voicing;
  final Value<String> copyrightStatus;
  final Value<String?> copyrightOwner;
  final Value<String?> midiAssetPath;
  final Value<bool> hasMidi;
  final Value<bool> hasChords;
  final Value<String?> chordData;
  final Value<bool> isRedLetterSpecial;
  final Value<String?> dialect;
  final Value<String?> sourceAttribution;
  final Value<bool> isCommunityContributed;
  final Value<int?> contributorId;
  final Value<int?> embeddingId;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> useCount;
  final Value<int?> lastUsed;
  const HymnsCompanion({
    this.id = const Value.absent(),
    this.collectionId = const Value.absent(),
    this.hymnNumber = const Value.absent(),
    this.title = const Value.absent(),
    this.titleNormalized = const Value.absent(),
    this.firstLine = const Value.absent(),
    this.firstLineNormalized = const Value.absent(),
    this.tuneName = const Value.absent(),
    this.meter = const Value.absent(),
    this.timeSignature = const Value.absent(),
    this.keySignature = const Value.absent(),
    this.bpmDefault = const Value.absent(),
    this.composerId = const Value.absent(),
    this.lyricistId = const Value.absent(),
    this.yearComposed = const Value.absent(),
    this.yearPublishedSda = const Value.absent(),
    this.scriptureRefs = const Value.absent(),
    this.occasions = const Value.absent(),
    this.emotionalTones = const Value.absent(),
    this.tempoCategory = const Value.absent(),
    this.tempoMarking = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.voicing = const Value.absent(),
    this.copyrightStatus = const Value.absent(),
    this.copyrightOwner = const Value.absent(),
    this.midiAssetPath = const Value.absent(),
    this.hasMidi = const Value.absent(),
    this.hasChords = const Value.absent(),
    this.chordData = const Value.absent(),
    this.isRedLetterSpecial = const Value.absent(),
    this.dialect = const Value.absent(),
    this.sourceAttribution = const Value.absent(),
    this.isCommunityContributed = const Value.absent(),
    this.contributorId = const Value.absent(),
    this.embeddingId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.useCount = const Value.absent(),
    this.lastUsed = const Value.absent(),
  });
  HymnsCompanion.insert({
    this.id = const Value.absent(),
    required int collectionId,
    this.hymnNumber = const Value.absent(),
    required String title,
    required String titleNormalized,
    this.firstLine = const Value.absent(),
    this.firstLineNormalized = const Value.absent(),
    this.tuneName = const Value.absent(),
    this.meter = const Value.absent(),
    this.timeSignature = const Value.absent(),
    this.keySignature = const Value.absent(),
    this.bpmDefault = const Value.absent(),
    this.composerId = const Value.absent(),
    this.lyricistId = const Value.absent(),
    this.yearComposed = const Value.absent(),
    this.yearPublishedSda = const Value.absent(),
    this.scriptureRefs = const Value.absent(),
    this.occasions = const Value.absent(),
    this.emotionalTones = const Value.absent(),
    this.tempoCategory = const Value.absent(),
    this.tempoMarking = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.voicing = const Value.absent(),
    this.copyrightStatus = const Value.absent(),
    this.copyrightOwner = const Value.absent(),
    this.midiAssetPath = const Value.absent(),
    this.hasMidi = const Value.absent(),
    this.hasChords = const Value.absent(),
    this.chordData = const Value.absent(),
    this.isRedLetterSpecial = const Value.absent(),
    this.dialect = const Value.absent(),
    this.sourceAttribution = const Value.absent(),
    this.isCommunityContributed = const Value.absent(),
    this.contributorId = const Value.absent(),
    this.embeddingId = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.useCount = const Value.absent(),
    this.lastUsed = const Value.absent(),
  })  : collectionId = Value(collectionId),
        title = Value(title),
        titleNormalized = Value(titleNormalized),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<Hymn> custom({
    Expression<int>? id,
    Expression<int>? collectionId,
    Expression<int>? hymnNumber,
    Expression<String>? title,
    Expression<String>? titleNormalized,
    Expression<String>? firstLine,
    Expression<String>? firstLineNormalized,
    Expression<String>? tuneName,
    Expression<String>? meter,
    Expression<String>? timeSignature,
    Expression<String>? keySignature,
    Expression<int>? bpmDefault,
    Expression<int>? composerId,
    Expression<int>? lyricistId,
    Expression<int>? yearComposed,
    Expression<int>? yearPublishedSda,
    Expression<String>? scriptureRefs,
    Expression<String>? occasions,
    Expression<String>? emotionalTones,
    Expression<String>? tempoCategory,
    Expression<String>? tempoMarking,
    Expression<String>? difficulty,
    Expression<String>? voicing,
    Expression<String>? copyrightStatus,
    Expression<String>? copyrightOwner,
    Expression<String>? midiAssetPath,
    Expression<bool>? hasMidi,
    Expression<bool>? hasChords,
    Expression<String>? chordData,
    Expression<bool>? isRedLetterSpecial,
    Expression<String>? dialect,
    Expression<String>? sourceAttribution,
    Expression<bool>? isCommunityContributed,
    Expression<int>? contributorId,
    Expression<int>? embeddingId,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? useCount,
    Expression<int>? lastUsed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (collectionId != null) 'collection_id': collectionId,
      if (hymnNumber != null) 'hymn_number': hymnNumber,
      if (title != null) 'title': title,
      if (titleNormalized != null) 'title_normalized': titleNormalized,
      if (firstLine != null) 'first_line': firstLine,
      if (firstLineNormalized != null)
        'first_line_normalized': firstLineNormalized,
      if (tuneName != null) 'tune_name': tuneName,
      if (meter != null) 'meter': meter,
      if (timeSignature != null) 'time_signature': timeSignature,
      if (keySignature != null) 'key_signature': keySignature,
      if (bpmDefault != null) 'bpm_default': bpmDefault,
      if (composerId != null) 'composer_id': composerId,
      if (lyricistId != null) 'lyricist_id': lyricistId,
      if (yearComposed != null) 'year_composed': yearComposed,
      if (yearPublishedSda != null) 'year_published_sda': yearPublishedSda,
      if (scriptureRefs != null) 'scripture_refs': scriptureRefs,
      if (occasions != null) 'occasions': occasions,
      if (emotionalTones != null) 'emotional_tones': emotionalTones,
      if (tempoCategory != null) 'tempo_category': tempoCategory,
      if (tempoMarking != null) 'tempo_marking': tempoMarking,
      if (difficulty != null) 'difficulty': difficulty,
      if (voicing != null) 'voicing': voicing,
      if (copyrightStatus != null) 'copyright_status': copyrightStatus,
      if (copyrightOwner != null) 'copyright_owner': copyrightOwner,
      if (midiAssetPath != null) 'midi_asset_path': midiAssetPath,
      if (hasMidi != null) 'has_midi': hasMidi,
      if (hasChords != null) 'has_chords': hasChords,
      if (chordData != null) 'chord_data': chordData,
      if (isRedLetterSpecial != null)
        'is_red_letter_special': isRedLetterSpecial,
      if (dialect != null) 'dialect': dialect,
      if (sourceAttribution != null) 'source_attribution': sourceAttribution,
      if (isCommunityContributed != null)
        'is_community_contributed': isCommunityContributed,
      if (contributorId != null) 'contributor_id': contributorId,
      if (embeddingId != null) 'embedding_id': embeddingId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (useCount != null) 'use_count': useCount,
      if (lastUsed != null) 'last_used': lastUsed,
    });
  }

  HymnsCompanion copyWith(
      {Value<int>? id,
      Value<int>? collectionId,
      Value<int?>? hymnNumber,
      Value<String>? title,
      Value<String>? titleNormalized,
      Value<String?>? firstLine,
      Value<String?>? firstLineNormalized,
      Value<String?>? tuneName,
      Value<String?>? meter,
      Value<String?>? timeSignature,
      Value<String?>? keySignature,
      Value<int?>? bpmDefault,
      Value<int?>? composerId,
      Value<int?>? lyricistId,
      Value<int?>? yearComposed,
      Value<int?>? yearPublishedSda,
      Value<String?>? scriptureRefs,
      Value<String>? occasions,
      Value<String?>? emotionalTones,
      Value<String>? tempoCategory,
      Value<String?>? tempoMarking,
      Value<String>? difficulty,
      Value<String>? voicing,
      Value<String>? copyrightStatus,
      Value<String?>? copyrightOwner,
      Value<String?>? midiAssetPath,
      Value<bool>? hasMidi,
      Value<bool>? hasChords,
      Value<String?>? chordData,
      Value<bool>? isRedLetterSpecial,
      Value<String?>? dialect,
      Value<String?>? sourceAttribution,
      Value<bool>? isCommunityContributed,
      Value<int?>? contributorId,
      Value<int?>? embeddingId,
      Value<int>? createdAt,
      Value<int>? updatedAt,
      Value<int>? useCount,
      Value<int?>? lastUsed}) {
    return HymnsCompanion(
      id: id ?? this.id,
      collectionId: collectionId ?? this.collectionId,
      hymnNumber: hymnNumber ?? this.hymnNumber,
      title: title ?? this.title,
      titleNormalized: titleNormalized ?? this.titleNormalized,
      firstLine: firstLine ?? this.firstLine,
      firstLineNormalized: firstLineNormalized ?? this.firstLineNormalized,
      tuneName: tuneName ?? this.tuneName,
      meter: meter ?? this.meter,
      timeSignature: timeSignature ?? this.timeSignature,
      keySignature: keySignature ?? this.keySignature,
      bpmDefault: bpmDefault ?? this.bpmDefault,
      composerId: composerId ?? this.composerId,
      lyricistId: lyricistId ?? this.lyricistId,
      yearComposed: yearComposed ?? this.yearComposed,
      yearPublishedSda: yearPublishedSda ?? this.yearPublishedSda,
      scriptureRefs: scriptureRefs ?? this.scriptureRefs,
      occasions: occasions ?? this.occasions,
      emotionalTones: emotionalTones ?? this.emotionalTones,
      tempoCategory: tempoCategory ?? this.tempoCategory,
      tempoMarking: tempoMarking ?? this.tempoMarking,
      difficulty: difficulty ?? this.difficulty,
      voicing: voicing ?? this.voicing,
      copyrightStatus: copyrightStatus ?? this.copyrightStatus,
      copyrightOwner: copyrightOwner ?? this.copyrightOwner,
      midiAssetPath: midiAssetPath ?? this.midiAssetPath,
      hasMidi: hasMidi ?? this.hasMidi,
      hasChords: hasChords ?? this.hasChords,
      chordData: chordData ?? this.chordData,
      isRedLetterSpecial: isRedLetterSpecial ?? this.isRedLetterSpecial,
      dialect: dialect ?? this.dialect,
      sourceAttribution: sourceAttribution ?? this.sourceAttribution,
      isCommunityContributed:
          isCommunityContributed ?? this.isCommunityContributed,
      contributorId: contributorId ?? this.contributorId,
      embeddingId: embeddingId ?? this.embeddingId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      useCount: useCount ?? this.useCount,
      lastUsed: lastUsed ?? this.lastUsed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (collectionId.present) {
      map['collection_id'] = Variable<int>(collectionId.value);
    }
    if (hymnNumber.present) {
      map['hymn_number'] = Variable<int>(hymnNumber.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (titleNormalized.present) {
      map['title_normalized'] = Variable<String>(titleNormalized.value);
    }
    if (firstLine.present) {
      map['first_line'] = Variable<String>(firstLine.value);
    }
    if (firstLineNormalized.present) {
      map['first_line_normalized'] =
          Variable<String>(firstLineNormalized.value);
    }
    if (tuneName.present) {
      map['tune_name'] = Variable<String>(tuneName.value);
    }
    if (meter.present) {
      map['meter'] = Variable<String>(meter.value);
    }
    if (timeSignature.present) {
      map['time_signature'] = Variable<String>(timeSignature.value);
    }
    if (keySignature.present) {
      map['key_signature'] = Variable<String>(keySignature.value);
    }
    if (bpmDefault.present) {
      map['bpm_default'] = Variable<int>(bpmDefault.value);
    }
    if (composerId.present) {
      map['composer_id'] = Variable<int>(composerId.value);
    }
    if (lyricistId.present) {
      map['lyricist_id'] = Variable<int>(lyricistId.value);
    }
    if (yearComposed.present) {
      map['year_composed'] = Variable<int>(yearComposed.value);
    }
    if (yearPublishedSda.present) {
      map['year_published_sda'] = Variable<int>(yearPublishedSda.value);
    }
    if (scriptureRefs.present) {
      map['scripture_refs'] = Variable<String>(scriptureRefs.value);
    }
    if (occasions.present) {
      map['occasions'] = Variable<String>(occasions.value);
    }
    if (emotionalTones.present) {
      map['emotional_tones'] = Variable<String>(emotionalTones.value);
    }
    if (tempoCategory.present) {
      map['tempo_category'] = Variable<String>(tempoCategory.value);
    }
    if (tempoMarking.present) {
      map['tempo_marking'] = Variable<String>(tempoMarking.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<String>(difficulty.value);
    }
    if (voicing.present) {
      map['voicing'] = Variable<String>(voicing.value);
    }
    if (copyrightStatus.present) {
      map['copyright_status'] = Variable<String>(copyrightStatus.value);
    }
    if (copyrightOwner.present) {
      map['copyright_owner'] = Variable<String>(copyrightOwner.value);
    }
    if (midiAssetPath.present) {
      map['midi_asset_path'] = Variable<String>(midiAssetPath.value);
    }
    if (hasMidi.present) {
      map['has_midi'] = Variable<bool>(hasMidi.value);
    }
    if (hasChords.present) {
      map['has_chords'] = Variable<bool>(hasChords.value);
    }
    if (chordData.present) {
      map['chord_data'] = Variable<String>(chordData.value);
    }
    if (isRedLetterSpecial.present) {
      map['is_red_letter_special'] = Variable<bool>(isRedLetterSpecial.value);
    }
    if (dialect.present) {
      map['dialect'] = Variable<String>(dialect.value);
    }
    if (sourceAttribution.present) {
      map['source_attribution'] = Variable<String>(sourceAttribution.value);
    }
    if (isCommunityContributed.present) {
      map['is_community_contributed'] =
          Variable<bool>(isCommunityContributed.value);
    }
    if (contributorId.present) {
      map['contributor_id'] = Variable<int>(contributorId.value);
    }
    if (embeddingId.present) {
      map['embedding_id'] = Variable<int>(embeddingId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (useCount.present) {
      map['use_count'] = Variable<int>(useCount.value);
    }
    if (lastUsed.present) {
      map['last_used'] = Variable<int>(lastUsed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HymnsCompanion(')
          ..write('id: $id, ')
          ..write('collectionId: $collectionId, ')
          ..write('hymnNumber: $hymnNumber, ')
          ..write('title: $title, ')
          ..write('titleNormalized: $titleNormalized, ')
          ..write('firstLine: $firstLine, ')
          ..write('firstLineNormalized: $firstLineNormalized, ')
          ..write('tuneName: $tuneName, ')
          ..write('meter: $meter, ')
          ..write('timeSignature: $timeSignature, ')
          ..write('keySignature: $keySignature, ')
          ..write('bpmDefault: $bpmDefault, ')
          ..write('composerId: $composerId, ')
          ..write('lyricistId: $lyricistId, ')
          ..write('yearComposed: $yearComposed, ')
          ..write('yearPublishedSda: $yearPublishedSda, ')
          ..write('scriptureRefs: $scriptureRefs, ')
          ..write('occasions: $occasions, ')
          ..write('emotionalTones: $emotionalTones, ')
          ..write('tempoCategory: $tempoCategory, ')
          ..write('tempoMarking: $tempoMarking, ')
          ..write('difficulty: $difficulty, ')
          ..write('voicing: $voicing, ')
          ..write('copyrightStatus: $copyrightStatus, ')
          ..write('copyrightOwner: $copyrightOwner, ')
          ..write('midiAssetPath: $midiAssetPath, ')
          ..write('hasMidi: $hasMidi, ')
          ..write('hasChords: $hasChords, ')
          ..write('chordData: $chordData, ')
          ..write('isRedLetterSpecial: $isRedLetterSpecial, ')
          ..write('dialect: $dialect, ')
          ..write('sourceAttribution: $sourceAttribution, ')
          ..write('isCommunityContributed: $isCommunityContributed, ')
          ..write('contributorId: $contributorId, ')
          ..write('embeddingId: $embeddingId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('useCount: $useCount, ')
          ..write('lastUsed: $lastUsed')
          ..write(')'))
        .toString();
  }
}

class $HymnVersesTable extends HymnVerses
    with TableInfo<$HymnVersesTable, HymnVerse> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HymnVersesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hymnIdMeta = const VerificationMeta('hymnId');
  @override
  late final GeneratedColumn<int> hymnId = GeneratedColumn<int>(
      'hymn_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _verseTypeMeta =
      const VerificationMeta('verseType');
  @override
  late final GeneratedColumn<String> verseType = GeneratedColumn<String>(
      'verse_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _verseNumberMeta =
      const VerificationMeta('verseNumber');
  @override
  late final GeneratedColumn<int> verseNumber = GeneratedColumn<int>(
      'verse_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _lyricsMeta = const VerificationMeta('lyrics');
  @override
  late final GeneratedColumn<String> lyrics = GeneratedColumn<String>(
      'lyrics', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lyricsNormalizedMeta =
      const VerificationMeta('lyricsNormalized');
  @override
  late final GeneratedColumn<String> lyricsNormalized = GeneratedColumn<String>(
      'lyrics_normalized', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wordCountMeta =
      const VerificationMeta('wordCount');
  @override
  late final GeneratedColumn<int> wordCount = GeneratedColumn<int>(
      'word_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _midiStartMsMeta =
      const VerificationMeta('midiStartMs');
  @override
  late final GeneratedColumn<int> midiStartMs = GeneratedColumn<int>(
      'midi_start_ms', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _midiEndMsMeta =
      const VerificationMeta('midiEndMs');
  @override
  late final GeneratedColumn<int> midiEndMs = GeneratedColumn<int>(
      'midi_end_ms', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        hymnId,
        verseType,
        verseNumber,
        lyrics,
        lyricsNormalized,
        wordCount,
        displayOrder,
        midiStartMs,
        midiEndMs
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hymn_verses';
  @override
  VerificationContext validateIntegrity(Insertable<HymnVerse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hymn_id')) {
      context.handle(_hymnIdMeta,
          hymnId.isAcceptableOrUnknown(data['hymn_id']!, _hymnIdMeta));
    }
    if (data.containsKey('verse_type')) {
      context.handle(_verseTypeMeta,
          verseType.isAcceptableOrUnknown(data['verse_type']!, _verseTypeMeta));
    } else if (isInserting) {
      context.missing(_verseTypeMeta);
    }
    if (data.containsKey('verse_number')) {
      context.handle(
          _verseNumberMeta,
          verseNumber.isAcceptableOrUnknown(
              data['verse_number']!, _verseNumberMeta));
    }
    if (data.containsKey('lyrics')) {
      context.handle(_lyricsMeta,
          lyrics.isAcceptableOrUnknown(data['lyrics']!, _lyricsMeta));
    } else if (isInserting) {
      context.missing(_lyricsMeta);
    }
    if (data.containsKey('lyrics_normalized')) {
      context.handle(
          _lyricsNormalizedMeta,
          lyricsNormalized.isAcceptableOrUnknown(
              data['lyrics_normalized']!, _lyricsNormalizedMeta));
    } else if (isInserting) {
      context.missing(_lyricsNormalizedMeta);
    }
    if (data.containsKey('word_count')) {
      context.handle(_wordCountMeta,
          wordCount.isAcceptableOrUnknown(data['word_count']!, _wordCountMeta));
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    } else if (isInserting) {
      context.missing(_displayOrderMeta);
    }
    if (data.containsKey('midi_start_ms')) {
      context.handle(
          _midiStartMsMeta,
          midiStartMs.isAcceptableOrUnknown(
              data['midi_start_ms']!, _midiStartMsMeta));
    }
    if (data.containsKey('midi_end_ms')) {
      context.handle(
          _midiEndMsMeta,
          midiEndMs.isAcceptableOrUnknown(
              data['midi_end_ms']!, _midiEndMsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HymnVerse map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HymnVerse(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_id']),
      verseType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}verse_type'])!,
      verseNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}verse_number']),
      lyrics: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lyrics'])!,
      lyricsNormalized: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}lyrics_normalized'])!,
      wordCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}word_count']),
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order'])!,
      midiStartMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}midi_start_ms']),
      midiEndMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}midi_end_ms']),
    );
  }

  @override
  $HymnVersesTable createAlias(String alias) {
    return $HymnVersesTable(attachedDatabase, alias);
  }
}

class HymnVerse extends DataClass implements Insertable<HymnVerse> {
  final int id;
  final int? hymnId;
  final String verseType;
  final int? verseNumber;
  final String lyrics;
  final String lyricsNormalized;
  final int? wordCount;
  final int displayOrder;
  final int? midiStartMs;
  final int? midiEndMs;
  const HymnVerse(
      {required this.id,
      this.hymnId,
      required this.verseType,
      this.verseNumber,
      required this.lyrics,
      required this.lyricsNormalized,
      this.wordCount,
      required this.displayOrder,
      this.midiStartMs,
      this.midiEndMs});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || hymnId != null) {
      map['hymn_id'] = Variable<int>(hymnId);
    }
    map['verse_type'] = Variable<String>(verseType);
    if (!nullToAbsent || verseNumber != null) {
      map['verse_number'] = Variable<int>(verseNumber);
    }
    map['lyrics'] = Variable<String>(lyrics);
    map['lyrics_normalized'] = Variable<String>(lyricsNormalized);
    if (!nullToAbsent || wordCount != null) {
      map['word_count'] = Variable<int>(wordCount);
    }
    map['display_order'] = Variable<int>(displayOrder);
    if (!nullToAbsent || midiStartMs != null) {
      map['midi_start_ms'] = Variable<int>(midiStartMs);
    }
    if (!nullToAbsent || midiEndMs != null) {
      map['midi_end_ms'] = Variable<int>(midiEndMs);
    }
    return map;
  }

  HymnVersesCompanion toCompanion(bool nullToAbsent) {
    return HymnVersesCompanion(
      id: Value(id),
      hymnId:
          hymnId == null && nullToAbsent ? const Value.absent() : Value(hymnId),
      verseType: Value(verseType),
      verseNumber: verseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(verseNumber),
      lyrics: Value(lyrics),
      lyricsNormalized: Value(lyricsNormalized),
      wordCount: wordCount == null && nullToAbsent
          ? const Value.absent()
          : Value(wordCount),
      displayOrder: Value(displayOrder),
      midiStartMs: midiStartMs == null && nullToAbsent
          ? const Value.absent()
          : Value(midiStartMs),
      midiEndMs: midiEndMs == null && nullToAbsent
          ? const Value.absent()
          : Value(midiEndMs),
    );
  }

  factory HymnVerse.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HymnVerse(
      id: serializer.fromJson<int>(json['id']),
      hymnId: serializer.fromJson<int?>(json['hymnId']),
      verseType: serializer.fromJson<String>(json['verseType']),
      verseNumber: serializer.fromJson<int?>(json['verseNumber']),
      lyrics: serializer.fromJson<String>(json['lyrics']),
      lyricsNormalized: serializer.fromJson<String>(json['lyricsNormalized']),
      wordCount: serializer.fromJson<int?>(json['wordCount']),
      displayOrder: serializer.fromJson<int>(json['displayOrder']),
      midiStartMs: serializer.fromJson<int?>(json['midiStartMs']),
      midiEndMs: serializer.fromJson<int?>(json['midiEndMs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hymnId': serializer.toJson<int?>(hymnId),
      'verseType': serializer.toJson<String>(verseType),
      'verseNumber': serializer.toJson<int?>(verseNumber),
      'lyrics': serializer.toJson<String>(lyrics),
      'lyricsNormalized': serializer.toJson<String>(lyricsNormalized),
      'wordCount': serializer.toJson<int?>(wordCount),
      'displayOrder': serializer.toJson<int>(displayOrder),
      'midiStartMs': serializer.toJson<int?>(midiStartMs),
      'midiEndMs': serializer.toJson<int?>(midiEndMs),
    };
  }

  HymnVerse copyWith(
          {int? id,
          Value<int?> hymnId = const Value.absent(),
          String? verseType,
          Value<int?> verseNumber = const Value.absent(),
          String? lyrics,
          String? lyricsNormalized,
          Value<int?> wordCount = const Value.absent(),
          int? displayOrder,
          Value<int?> midiStartMs = const Value.absent(),
          Value<int?> midiEndMs = const Value.absent()}) =>
      HymnVerse(
        id: id ?? this.id,
        hymnId: hymnId.present ? hymnId.value : this.hymnId,
        verseType: verseType ?? this.verseType,
        verseNumber: verseNumber.present ? verseNumber.value : this.verseNumber,
        lyrics: lyrics ?? this.lyrics,
        lyricsNormalized: lyricsNormalized ?? this.lyricsNormalized,
        wordCount: wordCount.present ? wordCount.value : this.wordCount,
        displayOrder: displayOrder ?? this.displayOrder,
        midiStartMs: midiStartMs.present ? midiStartMs.value : this.midiStartMs,
        midiEndMs: midiEndMs.present ? midiEndMs.value : this.midiEndMs,
      );
  @override
  String toString() {
    return (StringBuffer('HymnVerse(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('verseType: $verseType, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('lyrics: $lyrics, ')
          ..write('lyricsNormalized: $lyricsNormalized, ')
          ..write('wordCount: $wordCount, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('midiStartMs: $midiStartMs, ')
          ..write('midiEndMs: $midiEndMs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hymnId, verseType, verseNumber, lyrics,
      lyricsNormalized, wordCount, displayOrder, midiStartMs, midiEndMs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HymnVerse &&
          other.id == this.id &&
          other.hymnId == this.hymnId &&
          other.verseType == this.verseType &&
          other.verseNumber == this.verseNumber &&
          other.lyrics == this.lyrics &&
          other.lyricsNormalized == this.lyricsNormalized &&
          other.wordCount == this.wordCount &&
          other.displayOrder == this.displayOrder &&
          other.midiStartMs == this.midiStartMs &&
          other.midiEndMs == this.midiEndMs);
}

class HymnVersesCompanion extends UpdateCompanion<HymnVerse> {
  final Value<int> id;
  final Value<int?> hymnId;
  final Value<String> verseType;
  final Value<int?> verseNumber;
  final Value<String> lyrics;
  final Value<String> lyricsNormalized;
  final Value<int?> wordCount;
  final Value<int> displayOrder;
  final Value<int?> midiStartMs;
  final Value<int?> midiEndMs;
  const HymnVersesCompanion({
    this.id = const Value.absent(),
    this.hymnId = const Value.absent(),
    this.verseType = const Value.absent(),
    this.verseNumber = const Value.absent(),
    this.lyrics = const Value.absent(),
    this.lyricsNormalized = const Value.absent(),
    this.wordCount = const Value.absent(),
    this.displayOrder = const Value.absent(),
    this.midiStartMs = const Value.absent(),
    this.midiEndMs = const Value.absent(),
  });
  HymnVersesCompanion.insert({
    this.id = const Value.absent(),
    this.hymnId = const Value.absent(),
    required String verseType,
    this.verseNumber = const Value.absent(),
    required String lyrics,
    required String lyricsNormalized,
    this.wordCount = const Value.absent(),
    required int displayOrder,
    this.midiStartMs = const Value.absent(),
    this.midiEndMs = const Value.absent(),
  })  : verseType = Value(verseType),
        lyrics = Value(lyrics),
        lyricsNormalized = Value(lyricsNormalized),
        displayOrder = Value(displayOrder);
  static Insertable<HymnVerse> custom({
    Expression<int>? id,
    Expression<int>? hymnId,
    Expression<String>? verseType,
    Expression<int>? verseNumber,
    Expression<String>? lyrics,
    Expression<String>? lyricsNormalized,
    Expression<int>? wordCount,
    Expression<int>? displayOrder,
    Expression<int>? midiStartMs,
    Expression<int>? midiEndMs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hymnId != null) 'hymn_id': hymnId,
      if (verseType != null) 'verse_type': verseType,
      if (verseNumber != null) 'verse_number': verseNumber,
      if (lyrics != null) 'lyrics': lyrics,
      if (lyricsNormalized != null) 'lyrics_normalized': lyricsNormalized,
      if (wordCount != null) 'word_count': wordCount,
      if (displayOrder != null) 'display_order': displayOrder,
      if (midiStartMs != null) 'midi_start_ms': midiStartMs,
      if (midiEndMs != null) 'midi_end_ms': midiEndMs,
    });
  }

  HymnVersesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? hymnId,
      Value<String>? verseType,
      Value<int?>? verseNumber,
      Value<String>? lyrics,
      Value<String>? lyricsNormalized,
      Value<int?>? wordCount,
      Value<int>? displayOrder,
      Value<int?>? midiStartMs,
      Value<int?>? midiEndMs}) {
    return HymnVersesCompanion(
      id: id ?? this.id,
      hymnId: hymnId ?? this.hymnId,
      verseType: verseType ?? this.verseType,
      verseNumber: verseNumber ?? this.verseNumber,
      lyrics: lyrics ?? this.lyrics,
      lyricsNormalized: lyricsNormalized ?? this.lyricsNormalized,
      wordCount: wordCount ?? this.wordCount,
      displayOrder: displayOrder ?? this.displayOrder,
      midiStartMs: midiStartMs ?? this.midiStartMs,
      midiEndMs: midiEndMs ?? this.midiEndMs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hymnId.present) {
      map['hymn_id'] = Variable<int>(hymnId.value);
    }
    if (verseType.present) {
      map['verse_type'] = Variable<String>(verseType.value);
    }
    if (verseNumber.present) {
      map['verse_number'] = Variable<int>(verseNumber.value);
    }
    if (lyrics.present) {
      map['lyrics'] = Variable<String>(lyrics.value);
    }
    if (lyricsNormalized.present) {
      map['lyrics_normalized'] = Variable<String>(lyricsNormalized.value);
    }
    if (wordCount.present) {
      map['word_count'] = Variable<int>(wordCount.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    if (midiStartMs.present) {
      map['midi_start_ms'] = Variable<int>(midiStartMs.value);
    }
    if (midiEndMs.present) {
      map['midi_end_ms'] = Variable<int>(midiEndMs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HymnVersesCompanion(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('verseType: $verseType, ')
          ..write('verseNumber: $verseNumber, ')
          ..write('lyrics: $lyrics, ')
          ..write('lyricsNormalized: $lyricsNormalized, ')
          ..write('wordCount: $wordCount, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('midiStartMs: $midiStartMs, ')
          ..write('midiEndMs: $midiEndMs')
          ..write(')'))
        .toString();
  }
}

class $HymnCrossReferencesTable extends HymnCrossReferences
    with TableInfo<$HymnCrossReferencesTable, HymnCrossReference> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HymnCrossReferencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sourceHymnIdMeta =
      const VerificationMeta('sourceHymnId');
  @override
  late final GeneratedColumn<int> sourceHymnId = GeneratedColumn<int>(
      'source_hymn_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _targetHymnIdMeta =
      const VerificationMeta('targetHymnId');
  @override
  late final GeneratedColumn<int> targetHymnId = GeneratedColumn<int>(
      'target_hymn_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _relationshipMeta =
      const VerificationMeta('relationship');
  @override
  late final GeneratedColumn<String> relationship = GeneratedColumn<String>(
      'relationship', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _confidenceMeta =
      const VerificationMeta('confidence');
  @override
  late final GeneratedColumn<double> confidence = GeneratedColumn<double>(
      'confidence', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(1.0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, sourceHymnId, targetHymnId, relationship, confidence];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hymn_cross_references';
  @override
  VerificationContext validateIntegrity(Insertable<HymnCrossReference> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('source_hymn_id')) {
      context.handle(
          _sourceHymnIdMeta,
          sourceHymnId.isAcceptableOrUnknown(
              data['source_hymn_id']!, _sourceHymnIdMeta));
    } else if (isInserting) {
      context.missing(_sourceHymnIdMeta);
    }
    if (data.containsKey('target_hymn_id')) {
      context.handle(
          _targetHymnIdMeta,
          targetHymnId.isAcceptableOrUnknown(
              data['target_hymn_id']!, _targetHymnIdMeta));
    } else if (isInserting) {
      context.missing(_targetHymnIdMeta);
    }
    if (data.containsKey('relationship')) {
      context.handle(
          _relationshipMeta,
          relationship.isAcceptableOrUnknown(
              data['relationship']!, _relationshipMeta));
    } else if (isInserting) {
      context.missing(_relationshipMeta);
    }
    if (data.containsKey('confidence')) {
      context.handle(
          _confidenceMeta,
          confidence.isAcceptableOrUnknown(
              data['confidence']!, _confidenceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HymnCrossReference map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HymnCrossReference(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sourceHymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_hymn_id'])!,
      targetHymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}target_hymn_id'])!,
      relationship: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}relationship'])!,
      confidence: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}confidence'])!,
    );
  }

  @override
  $HymnCrossReferencesTable createAlias(String alias) {
    return $HymnCrossReferencesTable(attachedDatabase, alias);
  }
}

class HymnCrossReference extends DataClass
    implements Insertable<HymnCrossReference> {
  final int id;
  final int sourceHymnId;
  final int targetHymnId;
  final String relationship;
  final double confidence;
  const HymnCrossReference(
      {required this.id,
      required this.sourceHymnId,
      required this.targetHymnId,
      required this.relationship,
      required this.confidence});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['source_hymn_id'] = Variable<int>(sourceHymnId);
    map['target_hymn_id'] = Variable<int>(targetHymnId);
    map['relationship'] = Variable<String>(relationship);
    map['confidence'] = Variable<double>(confidence);
    return map;
  }

  HymnCrossReferencesCompanion toCompanion(bool nullToAbsent) {
    return HymnCrossReferencesCompanion(
      id: Value(id),
      sourceHymnId: Value(sourceHymnId),
      targetHymnId: Value(targetHymnId),
      relationship: Value(relationship),
      confidence: Value(confidence),
    );
  }

  factory HymnCrossReference.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HymnCrossReference(
      id: serializer.fromJson<int>(json['id']),
      sourceHymnId: serializer.fromJson<int>(json['sourceHymnId']),
      targetHymnId: serializer.fromJson<int>(json['targetHymnId']),
      relationship: serializer.fromJson<String>(json['relationship']),
      confidence: serializer.fromJson<double>(json['confidence']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sourceHymnId': serializer.toJson<int>(sourceHymnId),
      'targetHymnId': serializer.toJson<int>(targetHymnId),
      'relationship': serializer.toJson<String>(relationship),
      'confidence': serializer.toJson<double>(confidence),
    };
  }

  HymnCrossReference copyWith(
          {int? id,
          int? sourceHymnId,
          int? targetHymnId,
          String? relationship,
          double? confidence}) =>
      HymnCrossReference(
        id: id ?? this.id,
        sourceHymnId: sourceHymnId ?? this.sourceHymnId,
        targetHymnId: targetHymnId ?? this.targetHymnId,
        relationship: relationship ?? this.relationship,
        confidence: confidence ?? this.confidence,
      );
  @override
  String toString() {
    return (StringBuffer('HymnCrossReference(')
          ..write('id: $id, ')
          ..write('sourceHymnId: $sourceHymnId, ')
          ..write('targetHymnId: $targetHymnId, ')
          ..write('relationship: $relationship, ')
          ..write('confidence: $confidence')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, sourceHymnId, targetHymnId, relationship, confidence);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HymnCrossReference &&
          other.id == this.id &&
          other.sourceHymnId == this.sourceHymnId &&
          other.targetHymnId == this.targetHymnId &&
          other.relationship == this.relationship &&
          other.confidence == this.confidence);
}

class HymnCrossReferencesCompanion extends UpdateCompanion<HymnCrossReference> {
  final Value<int> id;
  final Value<int> sourceHymnId;
  final Value<int> targetHymnId;
  final Value<String> relationship;
  final Value<double> confidence;
  const HymnCrossReferencesCompanion({
    this.id = const Value.absent(),
    this.sourceHymnId = const Value.absent(),
    this.targetHymnId = const Value.absent(),
    this.relationship = const Value.absent(),
    this.confidence = const Value.absent(),
  });
  HymnCrossReferencesCompanion.insert({
    this.id = const Value.absent(),
    required int sourceHymnId,
    required int targetHymnId,
    required String relationship,
    this.confidence = const Value.absent(),
  })  : sourceHymnId = Value(sourceHymnId),
        targetHymnId = Value(targetHymnId),
        relationship = Value(relationship);
  static Insertable<HymnCrossReference> custom({
    Expression<int>? id,
    Expression<int>? sourceHymnId,
    Expression<int>? targetHymnId,
    Expression<String>? relationship,
    Expression<double>? confidence,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sourceHymnId != null) 'source_hymn_id': sourceHymnId,
      if (targetHymnId != null) 'target_hymn_id': targetHymnId,
      if (relationship != null) 'relationship': relationship,
      if (confidence != null) 'confidence': confidence,
    });
  }

  HymnCrossReferencesCompanion copyWith(
      {Value<int>? id,
      Value<int>? sourceHymnId,
      Value<int>? targetHymnId,
      Value<String>? relationship,
      Value<double>? confidence}) {
    return HymnCrossReferencesCompanion(
      id: id ?? this.id,
      sourceHymnId: sourceHymnId ?? this.sourceHymnId,
      targetHymnId: targetHymnId ?? this.targetHymnId,
      relationship: relationship ?? this.relationship,
      confidence: confidence ?? this.confidence,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sourceHymnId.present) {
      map['source_hymn_id'] = Variable<int>(sourceHymnId.value);
    }
    if (targetHymnId.present) {
      map['target_hymn_id'] = Variable<int>(targetHymnId.value);
    }
    if (relationship.present) {
      map['relationship'] = Variable<String>(relationship.value);
    }
    if (confidence.present) {
      map['confidence'] = Variable<double>(confidence.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HymnCrossReferencesCompanion(')
          ..write('id: $id, ')
          ..write('sourceHymnId: $sourceHymnId, ')
          ..write('targetHymnId: $targetHymnId, ')
          ..write('relationship: $relationship, ')
          ..write('confidence: $confidence')
          ..write(')'))
        .toString();
  }
}

class $TopicsTable extends Topics with TableInfo<$TopicsTable, Topic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopicsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameSwahiliMeta =
      const VerificationMeta('nameSwahili');
  @override
  late final GeneratedColumn<String> nameSwahili = GeneratedColumn<String>(
      'name_swahili', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<int> parentId = GeneratedColumn<int>(
      'parent_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES topics (id)'));
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, nameSwahili, parentId, displayOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'topics';
  @override
  VerificationContext validateIntegrity(Insertable<Topic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_swahili')) {
      context.handle(
          _nameSwahiliMeta,
          nameSwahili.isAcceptableOrUnknown(
              data['name_swahili']!, _nameSwahiliMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Topic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Topic(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      nameSwahili: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_swahili']),
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent_id']),
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order']),
    );
  }

  @override
  $TopicsTable createAlias(String alias) {
    return $TopicsTable(attachedDatabase, alias);
  }
}

class Topic extends DataClass implements Insertable<Topic> {
  final int id;
  final String name;
  final String? nameSwahili;
  final int? parentId;
  final int? displayOrder;
  const Topic(
      {required this.id,
      required this.name,
      this.nameSwahili,
      this.parentId,
      this.displayOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameSwahili != null) {
      map['name_swahili'] = Variable<String>(nameSwahili);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    if (!nullToAbsent || displayOrder != null) {
      map['display_order'] = Variable<int>(displayOrder);
    }
    return map;
  }

  TopicsCompanion toCompanion(bool nullToAbsent) {
    return TopicsCompanion(
      id: Value(id),
      name: Value(name),
      nameSwahili: nameSwahili == null && nullToAbsent
          ? const Value.absent()
          : Value(nameSwahili),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      displayOrder: displayOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(displayOrder),
    );
  }

  factory Topic.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Topic(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nameSwahili: serializer.fromJson<String?>(json['nameSwahili']),
      parentId: serializer.fromJson<int?>(json['parentId']),
      displayOrder: serializer.fromJson<int?>(json['displayOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'nameSwahili': serializer.toJson<String?>(nameSwahili),
      'parentId': serializer.toJson<int?>(parentId),
      'displayOrder': serializer.toJson<int?>(displayOrder),
    };
  }

  Topic copyWith(
          {int? id,
          String? name,
          Value<String?> nameSwahili = const Value.absent(),
          Value<int?> parentId = const Value.absent(),
          Value<int?> displayOrder = const Value.absent()}) =>
      Topic(
        id: id ?? this.id,
        name: name ?? this.name,
        nameSwahili: nameSwahili.present ? nameSwahili.value : this.nameSwahili,
        parentId: parentId.present ? parentId.value : this.parentId,
        displayOrder:
            displayOrder.present ? displayOrder.value : this.displayOrder,
      );
  @override
  String toString() {
    return (StringBuffer('Topic(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameSwahili: $nameSwahili, ')
          ..write('parentId: $parentId, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, nameSwahili, parentId, displayOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Topic &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameSwahili == this.nameSwahili &&
          other.parentId == this.parentId &&
          other.displayOrder == this.displayOrder);
}

class TopicsCompanion extends UpdateCompanion<Topic> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> nameSwahili;
  final Value<int?> parentId;
  final Value<int?> displayOrder;
  const TopicsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameSwahili = const Value.absent(),
    this.parentId = const Value.absent(),
    this.displayOrder = const Value.absent(),
  });
  TopicsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.nameSwahili = const Value.absent(),
    this.parentId = const Value.absent(),
    this.displayOrder = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Topic> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? nameSwahili,
    Expression<int>? parentId,
    Expression<int>? displayOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameSwahili != null) 'name_swahili': nameSwahili,
      if (parentId != null) 'parent_id': parentId,
      if (displayOrder != null) 'display_order': displayOrder,
    });
  }

  TopicsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? nameSwahili,
      Value<int?>? parentId,
      Value<int?>? displayOrder}) {
    return TopicsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameSwahili: nameSwahili ?? this.nameSwahili,
      parentId: parentId ?? this.parentId,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameSwahili.present) {
      map['name_swahili'] = Variable<String>(nameSwahili.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopicsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameSwahili: $nameSwahili, ')
          ..write('parentId: $parentId, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }
}

class $HymnTopicsTable extends HymnTopics
    with TableInfo<$HymnTopicsTable, HymnTopic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HymnTopicsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _hymnIdMeta = const VerificationMeta('hymnId');
  @override
  late final GeneratedColumn<int> hymnId = GeneratedColumn<int>(
      'hymn_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _topicIdMeta =
      const VerificationMeta('topicId');
  @override
  late final GeneratedColumn<int> topicId = GeneratedColumn<int>(
      'topic_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES topics (id)'));
  @override
  List<GeneratedColumn> get $columns => [hymnId, topicId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hymn_topics';
  @override
  VerificationContext validateIntegrity(Insertable<HymnTopic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('hymn_id')) {
      context.handle(_hymnIdMeta,
          hymnId.isAcceptableOrUnknown(data['hymn_id']!, _hymnIdMeta));
    } else if (isInserting) {
      context.missing(_hymnIdMeta);
    }
    if (data.containsKey('topic_id')) {
      context.handle(_topicIdMeta,
          topicId.isAcceptableOrUnknown(data['topic_id']!, _topicIdMeta));
    } else if (isInserting) {
      context.missing(_topicIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {hymnId, topicId};
  @override
  HymnTopic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HymnTopic(
      hymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_id'])!,
      topicId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}topic_id'])!,
    );
  }

  @override
  $HymnTopicsTable createAlias(String alias) {
    return $HymnTopicsTable(attachedDatabase, alias);
  }
}

class HymnTopic extends DataClass implements Insertable<HymnTopic> {
  final int hymnId;
  final int topicId;
  const HymnTopic({required this.hymnId, required this.topicId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['hymn_id'] = Variable<int>(hymnId);
    map['topic_id'] = Variable<int>(topicId);
    return map;
  }

  HymnTopicsCompanion toCompanion(bool nullToAbsent) {
    return HymnTopicsCompanion(
      hymnId: Value(hymnId),
      topicId: Value(topicId),
    );
  }

  factory HymnTopic.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HymnTopic(
      hymnId: serializer.fromJson<int>(json['hymnId']),
      topicId: serializer.fromJson<int>(json['topicId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'hymnId': serializer.toJson<int>(hymnId),
      'topicId': serializer.toJson<int>(topicId),
    };
  }

  HymnTopic copyWith({int? hymnId, int? topicId}) => HymnTopic(
        hymnId: hymnId ?? this.hymnId,
        topicId: topicId ?? this.topicId,
      );
  @override
  String toString() {
    return (StringBuffer('HymnTopic(')
          ..write('hymnId: $hymnId, ')
          ..write('topicId: $topicId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(hymnId, topicId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HymnTopic &&
          other.hymnId == this.hymnId &&
          other.topicId == this.topicId);
}

class HymnTopicsCompanion extends UpdateCompanion<HymnTopic> {
  final Value<int> hymnId;
  final Value<int> topicId;
  final Value<int> rowid;
  const HymnTopicsCompanion({
    this.hymnId = const Value.absent(),
    this.topicId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HymnTopicsCompanion.insert({
    required int hymnId,
    required int topicId,
    this.rowid = const Value.absent(),
  })  : hymnId = Value(hymnId),
        topicId = Value(topicId);
  static Insertable<HymnTopic> custom({
    Expression<int>? hymnId,
    Expression<int>? topicId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (hymnId != null) 'hymn_id': hymnId,
      if (topicId != null) 'topic_id': topicId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HymnTopicsCompanion copyWith(
      {Value<int>? hymnId, Value<int>? topicId, Value<int>? rowid}) {
    return HymnTopicsCompanion(
      hymnId: hymnId ?? this.hymnId,
      topicId: topicId ?? this.topicId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (hymnId.present) {
      map['hymn_id'] = Variable<int>(hymnId.value);
    }
    if (topicId.present) {
      map['topic_id'] = Variable<int>(topicId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HymnTopicsCompanion(')
          ..write('hymnId: $hymnId, ')
          ..write('topicId: $topicId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoriteFoldersTable extends FavoriteFolders
    with TableInfo<$FavoriteFoldersTable, FavoriteFolder> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteFoldersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
      'icon', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, color, icon, createdAt, displayOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_folders';
  @override
  VerificationContext validateIntegrity(Insertable<FavoriteFolder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteFolder map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteFolder(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      icon: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order'])!,
    );
  }

  @override
  $FavoriteFoldersTable createAlias(String alias) {
    return $FavoriteFoldersTable(attachedDatabase, alias);
  }
}

class FavoriteFolder extends DataClass implements Insertable<FavoriteFolder> {
  final int id;
  final String name;
  final String? color;
  final String? icon;
  final int createdAt;
  final int displayOrder;
  const FavoriteFolder(
      {required this.id,
      required this.name,
      this.color,
      this.icon,
      required this.createdAt,
      required this.displayOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['display_order'] = Variable<int>(displayOrder);
    return map;
  }

  FavoriteFoldersCompanion toCompanion(bool nullToAbsent) {
    return FavoriteFoldersCompanion(
      id: Value(id),
      name: Value(name),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      createdAt: Value(createdAt),
      displayOrder: Value(displayOrder),
    );
  }

  factory FavoriteFolder.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteFolder(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String?>(json['color']),
      icon: serializer.fromJson<String?>(json['icon']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      displayOrder: serializer.fromJson<int>(json['displayOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<String?>(color),
      'icon': serializer.toJson<String?>(icon),
      'createdAt': serializer.toJson<int>(createdAt),
      'displayOrder': serializer.toJson<int>(displayOrder),
    };
  }

  FavoriteFolder copyWith(
          {int? id,
          String? name,
          Value<String?> color = const Value.absent(),
          Value<String?> icon = const Value.absent(),
          int? createdAt,
          int? displayOrder}) =>
      FavoriteFolder(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color.present ? color.value : this.color,
        icon: icon.present ? icon.value : this.icon,
        createdAt: createdAt ?? this.createdAt,
        displayOrder: displayOrder ?? this.displayOrder,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteFolder(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('createdAt: $createdAt, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, color, icon, createdAt, displayOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteFolder &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.createdAt == this.createdAt &&
          other.displayOrder == this.displayOrder);
}

class FavoriteFoldersCompanion extends UpdateCompanion<FavoriteFolder> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> color;
  final Value<String?> icon;
  final Value<int> createdAt;
  final Value<int> displayOrder;
  const FavoriteFoldersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.displayOrder = const Value.absent(),
  });
  FavoriteFoldersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    required int createdAt,
    this.displayOrder = const Value.absent(),
  })  : name = Value(name),
        createdAt = Value(createdAt);
  static Insertable<FavoriteFolder> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? color,
    Expression<String>? icon,
    Expression<int>? createdAt,
    Expression<int>? displayOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (createdAt != null) 'created_at': createdAt,
      if (displayOrder != null) 'display_order': displayOrder,
    });
  }

  FavoriteFoldersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? color,
      Value<String?>? icon,
      Value<int>? createdAt,
      Value<int>? displayOrder}) {
    return FavoriteFoldersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      createdAt: createdAt ?? this.createdAt,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteFoldersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('createdAt: $createdAt, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }
}

class $UserFavoritesTable extends UserFavorites
    with TableInfo<$UserFavoritesTable, UserFavorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserFavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hymnIdMeta = const VerificationMeta('hymnId');
  @override
  late final GeneratedColumn<int> hymnId = GeneratedColumn<int>(
      'hymn_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _folderIdMeta =
      const VerificationMeta('folderId');
  @override
  late final GeneratedColumn<int> folderId = GeneratedColumn<int>(
      'folder_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES favorite_folders (id)'));
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<int> addedAt = GeneratedColumn<int>(
      'added_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _personalNoteMeta =
      const VerificationMeta('personalNote');
  @override
  late final GeneratedColumn<String> personalNote = GeneratedColumn<String>(
      'personal_note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, hymnId, folderId, addedAt, personalNote, displayOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_favorites';
  @override
  VerificationContext validateIntegrity(Insertable<UserFavorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hymn_id')) {
      context.handle(_hymnIdMeta,
          hymnId.isAcceptableOrUnknown(data['hymn_id']!, _hymnIdMeta));
    } else if (isInserting) {
      context.missing(_hymnIdMeta);
    }
    if (data.containsKey('folder_id')) {
      context.handle(_folderIdMeta,
          folderId.isAcceptableOrUnknown(data['folder_id']!, _folderIdMeta));
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    if (data.containsKey('personal_note')) {
      context.handle(
          _personalNoteMeta,
          personalNote.isAcceptableOrUnknown(
              data['personal_note']!, _personalNoteMeta));
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserFavorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserFavorite(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_id'])!,
      folderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}folder_id']),
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}added_at'])!,
      personalNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}personal_note']),
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order']),
    );
  }

  @override
  $UserFavoritesTable createAlias(String alias) {
    return $UserFavoritesTable(attachedDatabase, alias);
  }
}

class UserFavorite extends DataClass implements Insertable<UserFavorite> {
  final int id;
  final int hymnId;
  final int? folderId;
  final int addedAt;
  final String? personalNote;
  final int? displayOrder;
  const UserFavorite(
      {required this.id,
      required this.hymnId,
      this.folderId,
      required this.addedAt,
      this.personalNote,
      this.displayOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hymn_id'] = Variable<int>(hymnId);
    if (!nullToAbsent || folderId != null) {
      map['folder_id'] = Variable<int>(folderId);
    }
    map['added_at'] = Variable<int>(addedAt);
    if (!nullToAbsent || personalNote != null) {
      map['personal_note'] = Variable<String>(personalNote);
    }
    if (!nullToAbsent || displayOrder != null) {
      map['display_order'] = Variable<int>(displayOrder);
    }
    return map;
  }

  UserFavoritesCompanion toCompanion(bool nullToAbsent) {
    return UserFavoritesCompanion(
      id: Value(id),
      hymnId: Value(hymnId),
      folderId: folderId == null && nullToAbsent
          ? const Value.absent()
          : Value(folderId),
      addedAt: Value(addedAt),
      personalNote: personalNote == null && nullToAbsent
          ? const Value.absent()
          : Value(personalNote),
      displayOrder: displayOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(displayOrder),
    );
  }

  factory UserFavorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserFavorite(
      id: serializer.fromJson<int>(json['id']),
      hymnId: serializer.fromJson<int>(json['hymnId']),
      folderId: serializer.fromJson<int?>(json['folderId']),
      addedAt: serializer.fromJson<int>(json['addedAt']),
      personalNote: serializer.fromJson<String?>(json['personalNote']),
      displayOrder: serializer.fromJson<int?>(json['displayOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hymnId': serializer.toJson<int>(hymnId),
      'folderId': serializer.toJson<int?>(folderId),
      'addedAt': serializer.toJson<int>(addedAt),
      'personalNote': serializer.toJson<String?>(personalNote),
      'displayOrder': serializer.toJson<int?>(displayOrder),
    };
  }

  UserFavorite copyWith(
          {int? id,
          int? hymnId,
          Value<int?> folderId = const Value.absent(),
          int? addedAt,
          Value<String?> personalNote = const Value.absent(),
          Value<int?> displayOrder = const Value.absent()}) =>
      UserFavorite(
        id: id ?? this.id,
        hymnId: hymnId ?? this.hymnId,
        folderId: folderId.present ? folderId.value : this.folderId,
        addedAt: addedAt ?? this.addedAt,
        personalNote:
            personalNote.present ? personalNote.value : this.personalNote,
        displayOrder:
            displayOrder.present ? displayOrder.value : this.displayOrder,
      );
  @override
  String toString() {
    return (StringBuffer('UserFavorite(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('folderId: $folderId, ')
          ..write('addedAt: $addedAt, ')
          ..write('personalNote: $personalNote, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, hymnId, folderId, addedAt, personalNote, displayOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserFavorite &&
          other.id == this.id &&
          other.hymnId == this.hymnId &&
          other.folderId == this.folderId &&
          other.addedAt == this.addedAt &&
          other.personalNote == this.personalNote &&
          other.displayOrder == this.displayOrder);
}

class UserFavoritesCompanion extends UpdateCompanion<UserFavorite> {
  final Value<int> id;
  final Value<int> hymnId;
  final Value<int?> folderId;
  final Value<int> addedAt;
  final Value<String?> personalNote;
  final Value<int?> displayOrder;
  const UserFavoritesCompanion({
    this.id = const Value.absent(),
    this.hymnId = const Value.absent(),
    this.folderId = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.personalNote = const Value.absent(),
    this.displayOrder = const Value.absent(),
  });
  UserFavoritesCompanion.insert({
    this.id = const Value.absent(),
    required int hymnId,
    this.folderId = const Value.absent(),
    required int addedAt,
    this.personalNote = const Value.absent(),
    this.displayOrder = const Value.absent(),
  })  : hymnId = Value(hymnId),
        addedAt = Value(addedAt);
  static Insertable<UserFavorite> custom({
    Expression<int>? id,
    Expression<int>? hymnId,
    Expression<int>? folderId,
    Expression<int>? addedAt,
    Expression<String>? personalNote,
    Expression<int>? displayOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hymnId != null) 'hymn_id': hymnId,
      if (folderId != null) 'folder_id': folderId,
      if (addedAt != null) 'added_at': addedAt,
      if (personalNote != null) 'personal_note': personalNote,
      if (displayOrder != null) 'display_order': displayOrder,
    });
  }

  UserFavoritesCompanion copyWith(
      {Value<int>? id,
      Value<int>? hymnId,
      Value<int?>? folderId,
      Value<int>? addedAt,
      Value<String?>? personalNote,
      Value<int?>? displayOrder}) {
    return UserFavoritesCompanion(
      id: id ?? this.id,
      hymnId: hymnId ?? this.hymnId,
      folderId: folderId ?? this.folderId,
      addedAt: addedAt ?? this.addedAt,
      personalNote: personalNote ?? this.personalNote,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hymnId.present) {
      map['hymn_id'] = Variable<int>(hymnId.value);
    }
    if (folderId.present) {
      map['folder_id'] = Variable<int>(folderId.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<int>(addedAt.value);
    }
    if (personalNote.present) {
      map['personal_note'] = Variable<String>(personalNote.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserFavoritesCompanion(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('folderId: $folderId, ')
          ..write('addedAt: $addedAt, ')
          ..write('personalNote: $personalNote, ')
          ..write('displayOrder: $displayOrder')
          ..write(')'))
        .toString();
  }
}

class $SearchHistoryTable extends SearchHistory
    with TableInfo<$SearchHistoryTable, SearchHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _queryMeta = const VerificationMeta('query');
  @override
  late final GeneratedColumn<String> query = GeneratedColumn<String>(
      'query', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchTypeMeta =
      const VerificationMeta('searchType');
  @override
  late final GeneratedColumn<String> searchType = GeneratedColumn<String>(
      'search_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _filtersJsonMeta =
      const VerificationMeta('filtersJson');
  @override
  late final GeneratedColumn<String> filtersJson = GeneratedColumn<String>(
      'filters_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _resultCountMeta =
      const VerificationMeta('resultCount');
  @override
  late final GeneratedColumn<int> resultCount = GeneratedColumn<int>(
      'result_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _searchedAtMeta =
      const VerificationMeta('searchedAt');
  @override
  late final GeneratedColumn<int> searchedAt = GeneratedColumn<int>(
      'searched_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isSavedMeta =
      const VerificationMeta('isSaved');
  @override
  late final GeneratedColumn<bool> isSaved = GeneratedColumn<bool>(
      'is_saved', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_saved" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _savedNameMeta =
      const VerificationMeta('savedName');
  @override
  late final GeneratedColumn<String> savedName = GeneratedColumn<String>(
      'saved_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        query,
        searchType,
        filtersJson,
        resultCount,
        searchedAt,
        isSaved,
        savedName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_history';
  @override
  VerificationContext validateIntegrity(Insertable<SearchHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('query')) {
      context.handle(
          _queryMeta, query.isAcceptableOrUnknown(data['query']!, _queryMeta));
    } else if (isInserting) {
      context.missing(_queryMeta);
    }
    if (data.containsKey('search_type')) {
      context.handle(
          _searchTypeMeta,
          searchType.isAcceptableOrUnknown(
              data['search_type']!, _searchTypeMeta));
    } else if (isInserting) {
      context.missing(_searchTypeMeta);
    }
    if (data.containsKey('filters_json')) {
      context.handle(
          _filtersJsonMeta,
          filtersJson.isAcceptableOrUnknown(
              data['filters_json']!, _filtersJsonMeta));
    }
    if (data.containsKey('result_count')) {
      context.handle(
          _resultCountMeta,
          resultCount.isAcceptableOrUnknown(
              data['result_count']!, _resultCountMeta));
    }
    if (data.containsKey('searched_at')) {
      context.handle(
          _searchedAtMeta,
          searchedAt.isAcceptableOrUnknown(
              data['searched_at']!, _searchedAtMeta));
    } else if (isInserting) {
      context.missing(_searchedAtMeta);
    }
    if (data.containsKey('is_saved')) {
      context.handle(_isSavedMeta,
          isSaved.isAcceptableOrUnknown(data['is_saved']!, _isSavedMeta));
    }
    if (data.containsKey('saved_name')) {
      context.handle(_savedNameMeta,
          savedName.isAcceptableOrUnknown(data['saved_name']!, _savedNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SearchHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchHistoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      query: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}query'])!,
      searchType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_type'])!,
      filtersJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}filters_json']),
      resultCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}result_count']),
      searchedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}searched_at'])!,
      isSaved: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_saved'])!,
      savedName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}saved_name']),
    );
  }

  @override
  $SearchHistoryTable createAlias(String alias) {
    return $SearchHistoryTable(attachedDatabase, alias);
  }
}

class SearchHistoryData extends DataClass
    implements Insertable<SearchHistoryData> {
  final int id;
  final String query;
  final String searchType;
  final String? filtersJson;
  final int? resultCount;
  final int searchedAt;
  final bool isSaved;
  final String? savedName;
  const SearchHistoryData(
      {required this.id,
      required this.query,
      required this.searchType,
      this.filtersJson,
      this.resultCount,
      required this.searchedAt,
      required this.isSaved,
      this.savedName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['query'] = Variable<String>(query);
    map['search_type'] = Variable<String>(searchType);
    if (!nullToAbsent || filtersJson != null) {
      map['filters_json'] = Variable<String>(filtersJson);
    }
    if (!nullToAbsent || resultCount != null) {
      map['result_count'] = Variable<int>(resultCount);
    }
    map['searched_at'] = Variable<int>(searchedAt);
    map['is_saved'] = Variable<bool>(isSaved);
    if (!nullToAbsent || savedName != null) {
      map['saved_name'] = Variable<String>(savedName);
    }
    return map;
  }

  SearchHistoryCompanion toCompanion(bool nullToAbsent) {
    return SearchHistoryCompanion(
      id: Value(id),
      query: Value(query),
      searchType: Value(searchType),
      filtersJson: filtersJson == null && nullToAbsent
          ? const Value.absent()
          : Value(filtersJson),
      resultCount: resultCount == null && nullToAbsent
          ? const Value.absent()
          : Value(resultCount),
      searchedAt: Value(searchedAt),
      isSaved: Value(isSaved),
      savedName: savedName == null && nullToAbsent
          ? const Value.absent()
          : Value(savedName),
    );
  }

  factory SearchHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchHistoryData(
      id: serializer.fromJson<int>(json['id']),
      query: serializer.fromJson<String>(json['query']),
      searchType: serializer.fromJson<String>(json['searchType']),
      filtersJson: serializer.fromJson<String?>(json['filtersJson']),
      resultCount: serializer.fromJson<int?>(json['resultCount']),
      searchedAt: serializer.fromJson<int>(json['searchedAt']),
      isSaved: serializer.fromJson<bool>(json['isSaved']),
      savedName: serializer.fromJson<String?>(json['savedName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'query': serializer.toJson<String>(query),
      'searchType': serializer.toJson<String>(searchType),
      'filtersJson': serializer.toJson<String?>(filtersJson),
      'resultCount': serializer.toJson<int?>(resultCount),
      'searchedAt': serializer.toJson<int>(searchedAt),
      'isSaved': serializer.toJson<bool>(isSaved),
      'savedName': serializer.toJson<String?>(savedName),
    };
  }

  SearchHistoryData copyWith(
          {int? id,
          String? query,
          String? searchType,
          Value<String?> filtersJson = const Value.absent(),
          Value<int?> resultCount = const Value.absent(),
          int? searchedAt,
          bool? isSaved,
          Value<String?> savedName = const Value.absent()}) =>
      SearchHistoryData(
        id: id ?? this.id,
        query: query ?? this.query,
        searchType: searchType ?? this.searchType,
        filtersJson: filtersJson.present ? filtersJson.value : this.filtersJson,
        resultCount: resultCount.present ? resultCount.value : this.resultCount,
        searchedAt: searchedAt ?? this.searchedAt,
        isSaved: isSaved ?? this.isSaved,
        savedName: savedName.present ? savedName.value : this.savedName,
      );
  @override
  String toString() {
    return (StringBuffer('SearchHistoryData(')
          ..write('id: $id, ')
          ..write('query: $query, ')
          ..write('searchType: $searchType, ')
          ..write('filtersJson: $filtersJson, ')
          ..write('resultCount: $resultCount, ')
          ..write('searchedAt: $searchedAt, ')
          ..write('isSaved: $isSaved, ')
          ..write('savedName: $savedName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, query, searchType, filtersJson,
      resultCount, searchedAt, isSaved, savedName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchHistoryData &&
          other.id == this.id &&
          other.query == this.query &&
          other.searchType == this.searchType &&
          other.filtersJson == this.filtersJson &&
          other.resultCount == this.resultCount &&
          other.searchedAt == this.searchedAt &&
          other.isSaved == this.isSaved &&
          other.savedName == this.savedName);
}

class SearchHistoryCompanion extends UpdateCompanion<SearchHistoryData> {
  final Value<int> id;
  final Value<String> query;
  final Value<String> searchType;
  final Value<String?> filtersJson;
  final Value<int?> resultCount;
  final Value<int> searchedAt;
  final Value<bool> isSaved;
  final Value<String?> savedName;
  const SearchHistoryCompanion({
    this.id = const Value.absent(),
    this.query = const Value.absent(),
    this.searchType = const Value.absent(),
    this.filtersJson = const Value.absent(),
    this.resultCount = const Value.absent(),
    this.searchedAt = const Value.absent(),
    this.isSaved = const Value.absent(),
    this.savedName = const Value.absent(),
  });
  SearchHistoryCompanion.insert({
    this.id = const Value.absent(),
    required String query,
    required String searchType,
    this.filtersJson = const Value.absent(),
    this.resultCount = const Value.absent(),
    required int searchedAt,
    this.isSaved = const Value.absent(),
    this.savedName = const Value.absent(),
  })  : query = Value(query),
        searchType = Value(searchType),
        searchedAt = Value(searchedAt);
  static Insertable<SearchHistoryData> custom({
    Expression<int>? id,
    Expression<String>? query,
    Expression<String>? searchType,
    Expression<String>? filtersJson,
    Expression<int>? resultCount,
    Expression<int>? searchedAt,
    Expression<bool>? isSaved,
    Expression<String>? savedName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (query != null) 'query': query,
      if (searchType != null) 'search_type': searchType,
      if (filtersJson != null) 'filters_json': filtersJson,
      if (resultCount != null) 'result_count': resultCount,
      if (searchedAt != null) 'searched_at': searchedAt,
      if (isSaved != null) 'is_saved': isSaved,
      if (savedName != null) 'saved_name': savedName,
    });
  }

  SearchHistoryCompanion copyWith(
      {Value<int>? id,
      Value<String>? query,
      Value<String>? searchType,
      Value<String?>? filtersJson,
      Value<int?>? resultCount,
      Value<int>? searchedAt,
      Value<bool>? isSaved,
      Value<String?>? savedName}) {
    return SearchHistoryCompanion(
      id: id ?? this.id,
      query: query ?? this.query,
      searchType: searchType ?? this.searchType,
      filtersJson: filtersJson ?? this.filtersJson,
      resultCount: resultCount ?? this.resultCount,
      searchedAt: searchedAt ?? this.searchedAt,
      isSaved: isSaved ?? this.isSaved,
      savedName: savedName ?? this.savedName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (query.present) {
      map['query'] = Variable<String>(query.value);
    }
    if (searchType.present) {
      map['search_type'] = Variable<String>(searchType.value);
    }
    if (filtersJson.present) {
      map['filters_json'] = Variable<String>(filtersJson.value);
    }
    if (resultCount.present) {
      map['result_count'] = Variable<int>(resultCount.value);
    }
    if (searchedAt.present) {
      map['searched_at'] = Variable<int>(searchedAt.value);
    }
    if (isSaved.present) {
      map['is_saved'] = Variable<bool>(isSaved.value);
    }
    if (savedName.present) {
      map['saved_name'] = Variable<String>(savedName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchHistoryCompanion(')
          ..write('id: $id, ')
          ..write('query: $query, ')
          ..write('searchType: $searchType, ')
          ..write('filtersJson: $filtersJson, ')
          ..write('resultCount: $resultCount, ')
          ..write('searchedAt: $searchedAt, ')
          ..write('isSaved: $isSaved, ')
          ..write('savedName: $savedName')
          ..write(')'))
        .toString();
  }
}

class $WorshipProgramsTable extends WorshipPrograms
    with TableInfo<$WorshipProgramsTable, WorshipProgram> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorshipProgramsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<int> date = GeneratedColumn<int>(
      'date', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _churchNameMeta =
      const VerificationMeta('churchName');
  @override
  late final GeneratedColumn<String> churchName = GeneratedColumn<String>(
      'church_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _serviceTypeMeta =
      const VerificationMeta('serviceType');
  @override
  late final GeneratedColumn<String> serviceType = GeneratedColumn<String>(
      'service_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isTemplateMeta =
      const VerificationMeta('isTemplate');
  @override
  late final GeneratedColumn<bool> isTemplate = GeneratedColumn<bool>(
      'is_template', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_template" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        date,
        churchName,
        serviceType,
        notes,
        createdAt,
        updatedAt,
        isTemplate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'worship_programs';
  @override
  VerificationContext validateIntegrity(Insertable<WorshipProgram> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('church_name')) {
      context.handle(
          _churchNameMeta,
          churchName.isAcceptableOrUnknown(
              data['church_name']!, _churchNameMeta));
    }
    if (data.containsKey('service_type')) {
      context.handle(
          _serviceTypeMeta,
          serviceType.isAcceptableOrUnknown(
              data['service_type']!, _serviceTypeMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_template')) {
      context.handle(
          _isTemplateMeta,
          isTemplate.isAcceptableOrUnknown(
              data['is_template']!, _isTemplateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorshipProgram map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorshipProgram(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date']),
      churchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}church_name']),
      serviceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}service_type']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
      isTemplate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_template'])!,
    );
  }

  @override
  $WorshipProgramsTable createAlias(String alias) {
    return $WorshipProgramsTable(attachedDatabase, alias);
  }
}

class WorshipProgram extends DataClass implements Insertable<WorshipProgram> {
  final int id;
  final String title;
  final int? date;
  final String? churchName;
  final String? serviceType;
  final String? notes;
  final int createdAt;
  final int updatedAt;
  final bool isTemplate;
  const WorshipProgram(
      {required this.id,
      required this.title,
      this.date,
      this.churchName,
      this.serviceType,
      this.notes,
      required this.createdAt,
      required this.updatedAt,
      required this.isTemplate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<int>(date);
    }
    if (!nullToAbsent || churchName != null) {
      map['church_name'] = Variable<String>(churchName);
    }
    if (!nullToAbsent || serviceType != null) {
      map['service_type'] = Variable<String>(serviceType);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    map['is_template'] = Variable<bool>(isTemplate);
    return map;
  }

  WorshipProgramsCompanion toCompanion(bool nullToAbsent) {
    return WorshipProgramsCompanion(
      id: Value(id),
      title: Value(title),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      churchName: churchName == null && nullToAbsent
          ? const Value.absent()
          : Value(churchName),
      serviceType: serviceType == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceType),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isTemplate: Value(isTemplate),
    );
  }

  factory WorshipProgram.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorshipProgram(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      date: serializer.fromJson<int?>(json['date']),
      churchName: serializer.fromJson<String?>(json['churchName']),
      serviceType: serializer.fromJson<String?>(json['serviceType']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
      isTemplate: serializer.fromJson<bool>(json['isTemplate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'date': serializer.toJson<int?>(date),
      'churchName': serializer.toJson<String?>(churchName),
      'serviceType': serializer.toJson<String?>(serviceType),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
      'isTemplate': serializer.toJson<bool>(isTemplate),
    };
  }

  WorshipProgram copyWith(
          {int? id,
          String? title,
          Value<int?> date = const Value.absent(),
          Value<String?> churchName = const Value.absent(),
          Value<String?> serviceType = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          int? createdAt,
          int? updatedAt,
          bool? isTemplate}) =>
      WorshipProgram(
        id: id ?? this.id,
        title: title ?? this.title,
        date: date.present ? date.value : this.date,
        churchName: churchName.present ? churchName.value : this.churchName,
        serviceType: serviceType.present ? serviceType.value : this.serviceType,
        notes: notes.present ? notes.value : this.notes,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isTemplate: isTemplate ?? this.isTemplate,
      );
  @override
  String toString() {
    return (StringBuffer('WorshipProgram(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('date: $date, ')
          ..write('churchName: $churchName, ')
          ..write('serviceType: $serviceType, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isTemplate: $isTemplate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, date, churchName, serviceType,
      notes, createdAt, updatedAt, isTemplate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorshipProgram &&
          other.id == this.id &&
          other.title == this.title &&
          other.date == this.date &&
          other.churchName == this.churchName &&
          other.serviceType == this.serviceType &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isTemplate == this.isTemplate);
}

class WorshipProgramsCompanion extends UpdateCompanion<WorshipProgram> {
  final Value<int> id;
  final Value<String> title;
  final Value<int?> date;
  final Value<String?> churchName;
  final Value<String?> serviceType;
  final Value<String?> notes;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<bool> isTemplate;
  const WorshipProgramsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.date = const Value.absent(),
    this.churchName = const Value.absent(),
    this.serviceType = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isTemplate = const Value.absent(),
  });
  WorshipProgramsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.date = const Value.absent(),
    this.churchName = const Value.absent(),
    this.serviceType = const Value.absent(),
    this.notes = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.isTemplate = const Value.absent(),
  })  : title = Value(title),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<WorshipProgram> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? date,
    Expression<String>? churchName,
    Expression<String>? serviceType,
    Expression<String>? notes,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<bool>? isTemplate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (date != null) 'date': date,
      if (churchName != null) 'church_name': churchName,
      if (serviceType != null) 'service_type': serviceType,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isTemplate != null) 'is_template': isTemplate,
    });
  }

  WorshipProgramsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<int?>? date,
      Value<String?>? churchName,
      Value<String?>? serviceType,
      Value<String?>? notes,
      Value<int>? createdAt,
      Value<int>? updatedAt,
      Value<bool>? isTemplate}) {
    return WorshipProgramsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      date: date ?? this.date,
      churchName: churchName ?? this.churchName,
      serviceType: serviceType ?? this.serviceType,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isTemplate: isTemplate ?? this.isTemplate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (date.present) {
      map['date'] = Variable<int>(date.value);
    }
    if (churchName.present) {
      map['church_name'] = Variable<String>(churchName.value);
    }
    if (serviceType.present) {
      map['service_type'] = Variable<String>(serviceType.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (isTemplate.present) {
      map['is_template'] = Variable<bool>(isTemplate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorshipProgramsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('date: $date, ')
          ..write('churchName: $churchName, ')
          ..write('serviceType: $serviceType, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isTemplate: $isTemplate')
          ..write(')'))
        .toString();
  }
}

class $ProgramItemsTable extends ProgramItems
    with TableInfo<$ProgramItemsTable, ProgramItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProgramItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _programIdMeta =
      const VerificationMeta('programId');
  @override
  late final GeneratedColumn<int> programId = GeneratedColumn<int>(
      'program_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES worship_programs (id)'));
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemTypeMeta =
      const VerificationMeta('itemType');
  @override
  late final GeneratedColumn<String> itemType = GeneratedColumn<String>(
      'item_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hymnIdMeta = const VerificationMeta('hymnId');
  @override
  late final GeneratedColumn<int> hymnId = GeneratedColumn<int>(
      'hymn_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _customTitleMeta =
      const VerificationMeta('customTitle');
  @override
  late final GeneratedColumn<String> customTitle = GeneratedColumn<String>(
      'custom_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customContentMeta =
      const VerificationMeta('customContent');
  @override
  late final GeneratedColumn<String> customContent = GeneratedColumn<String>(
      'custom_content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _durationMinutesMeta =
      const VerificationMeta('durationMinutes');
  @override
  late final GeneratedColumn<int> durationMinutes = GeneratedColumn<int>(
      'duration_minutes', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isCompleteMeta =
      const VerificationMeta('isComplete');
  @override
  late final GeneratedColumn<bool> isComplete = GeneratedColumn<bool>(
      'is_complete', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_complete" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        programId,
        displayOrder,
        itemType,
        hymnId,
        customTitle,
        customContent,
        durationMinutes,
        notes,
        isComplete
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'program_items';
  @override
  VerificationContext validateIntegrity(Insertable<ProgramItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('program_id')) {
      context.handle(_programIdMeta,
          programId.isAcceptableOrUnknown(data['program_id']!, _programIdMeta));
    } else if (isInserting) {
      context.missing(_programIdMeta);
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    } else if (isInserting) {
      context.missing(_displayOrderMeta);
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('hymn_id')) {
      context.handle(_hymnIdMeta,
          hymnId.isAcceptableOrUnknown(data['hymn_id']!, _hymnIdMeta));
    }
    if (data.containsKey('custom_title')) {
      context.handle(
          _customTitleMeta,
          customTitle.isAcceptableOrUnknown(
              data['custom_title']!, _customTitleMeta));
    }
    if (data.containsKey('custom_content')) {
      context.handle(
          _customContentMeta,
          customContent.isAcceptableOrUnknown(
              data['custom_content']!, _customContentMeta));
    }
    if (data.containsKey('duration_minutes')) {
      context.handle(
          _durationMinutesMeta,
          durationMinutes.isAcceptableOrUnknown(
              data['duration_minutes']!, _durationMinutesMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('is_complete')) {
      context.handle(
          _isCompleteMeta,
          isComplete.isAcceptableOrUnknown(
              data['is_complete']!, _isCompleteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProgramItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProgramItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      programId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}program_id'])!,
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order'])!,
      itemType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_type'])!,
      hymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_id']),
      customTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_title']),
      customContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_content']),
      durationMinutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_minutes']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      isComplete: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_complete'])!,
    );
  }

  @override
  $ProgramItemsTable createAlias(String alias) {
    return $ProgramItemsTable(attachedDatabase, alias);
  }
}

class ProgramItem extends DataClass implements Insertable<ProgramItem> {
  final int id;
  final int programId;
  final int displayOrder;
  final String itemType;
  final int? hymnId;
  final String? customTitle;
  final String? customContent;
  final int? durationMinutes;
  final String? notes;
  final bool isComplete;
  const ProgramItem(
      {required this.id,
      required this.programId,
      required this.displayOrder,
      required this.itemType,
      this.hymnId,
      this.customTitle,
      this.customContent,
      this.durationMinutes,
      this.notes,
      required this.isComplete});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['program_id'] = Variable<int>(programId);
    map['display_order'] = Variable<int>(displayOrder);
    map['item_type'] = Variable<String>(itemType);
    if (!nullToAbsent || hymnId != null) {
      map['hymn_id'] = Variable<int>(hymnId);
    }
    if (!nullToAbsent || customTitle != null) {
      map['custom_title'] = Variable<String>(customTitle);
    }
    if (!nullToAbsent || customContent != null) {
      map['custom_content'] = Variable<String>(customContent);
    }
    if (!nullToAbsent || durationMinutes != null) {
      map['duration_minutes'] = Variable<int>(durationMinutes);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['is_complete'] = Variable<bool>(isComplete);
    return map;
  }

  ProgramItemsCompanion toCompanion(bool nullToAbsent) {
    return ProgramItemsCompanion(
      id: Value(id),
      programId: Value(programId),
      displayOrder: Value(displayOrder),
      itemType: Value(itemType),
      hymnId:
          hymnId == null && nullToAbsent ? const Value.absent() : Value(hymnId),
      customTitle: customTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(customTitle),
      customContent: customContent == null && nullToAbsent
          ? const Value.absent()
          : Value(customContent),
      durationMinutes: durationMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(durationMinutes),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      isComplete: Value(isComplete),
    );
  }

  factory ProgramItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProgramItem(
      id: serializer.fromJson<int>(json['id']),
      programId: serializer.fromJson<int>(json['programId']),
      displayOrder: serializer.fromJson<int>(json['displayOrder']),
      itemType: serializer.fromJson<String>(json['itemType']),
      hymnId: serializer.fromJson<int?>(json['hymnId']),
      customTitle: serializer.fromJson<String?>(json['customTitle']),
      customContent: serializer.fromJson<String?>(json['customContent']),
      durationMinutes: serializer.fromJson<int?>(json['durationMinutes']),
      notes: serializer.fromJson<String?>(json['notes']),
      isComplete: serializer.fromJson<bool>(json['isComplete']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'programId': serializer.toJson<int>(programId),
      'displayOrder': serializer.toJson<int>(displayOrder),
      'itemType': serializer.toJson<String>(itemType),
      'hymnId': serializer.toJson<int?>(hymnId),
      'customTitle': serializer.toJson<String?>(customTitle),
      'customContent': serializer.toJson<String?>(customContent),
      'durationMinutes': serializer.toJson<int?>(durationMinutes),
      'notes': serializer.toJson<String?>(notes),
      'isComplete': serializer.toJson<bool>(isComplete),
    };
  }

  ProgramItem copyWith(
          {int? id,
          int? programId,
          int? displayOrder,
          String? itemType,
          Value<int?> hymnId = const Value.absent(),
          Value<String?> customTitle = const Value.absent(),
          Value<String?> customContent = const Value.absent(),
          Value<int?> durationMinutes = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          bool? isComplete}) =>
      ProgramItem(
        id: id ?? this.id,
        programId: programId ?? this.programId,
        displayOrder: displayOrder ?? this.displayOrder,
        itemType: itemType ?? this.itemType,
        hymnId: hymnId.present ? hymnId.value : this.hymnId,
        customTitle: customTitle.present ? customTitle.value : this.customTitle,
        customContent:
            customContent.present ? customContent.value : this.customContent,
        durationMinutes: durationMinutes.present
            ? durationMinutes.value
            : this.durationMinutes,
        notes: notes.present ? notes.value : this.notes,
        isComplete: isComplete ?? this.isComplete,
      );
  @override
  String toString() {
    return (StringBuffer('ProgramItem(')
          ..write('id: $id, ')
          ..write('programId: $programId, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('itemType: $itemType, ')
          ..write('hymnId: $hymnId, ')
          ..write('customTitle: $customTitle, ')
          ..write('customContent: $customContent, ')
          ..write('durationMinutes: $durationMinutes, ')
          ..write('notes: $notes, ')
          ..write('isComplete: $isComplete')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, programId, displayOrder, itemType, hymnId,
      customTitle, customContent, durationMinutes, notes, isComplete);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProgramItem &&
          other.id == this.id &&
          other.programId == this.programId &&
          other.displayOrder == this.displayOrder &&
          other.itemType == this.itemType &&
          other.hymnId == this.hymnId &&
          other.customTitle == this.customTitle &&
          other.customContent == this.customContent &&
          other.durationMinutes == this.durationMinutes &&
          other.notes == this.notes &&
          other.isComplete == this.isComplete);
}

class ProgramItemsCompanion extends UpdateCompanion<ProgramItem> {
  final Value<int> id;
  final Value<int> programId;
  final Value<int> displayOrder;
  final Value<String> itemType;
  final Value<int?> hymnId;
  final Value<String?> customTitle;
  final Value<String?> customContent;
  final Value<int?> durationMinutes;
  final Value<String?> notes;
  final Value<bool> isComplete;
  const ProgramItemsCompanion({
    this.id = const Value.absent(),
    this.programId = const Value.absent(),
    this.displayOrder = const Value.absent(),
    this.itemType = const Value.absent(),
    this.hymnId = const Value.absent(),
    this.customTitle = const Value.absent(),
    this.customContent = const Value.absent(),
    this.durationMinutes = const Value.absent(),
    this.notes = const Value.absent(),
    this.isComplete = const Value.absent(),
  });
  ProgramItemsCompanion.insert({
    this.id = const Value.absent(),
    required int programId,
    required int displayOrder,
    required String itemType,
    this.hymnId = const Value.absent(),
    this.customTitle = const Value.absent(),
    this.customContent = const Value.absent(),
    this.durationMinutes = const Value.absent(),
    this.notes = const Value.absent(),
    this.isComplete = const Value.absent(),
  })  : programId = Value(programId),
        displayOrder = Value(displayOrder),
        itemType = Value(itemType);
  static Insertable<ProgramItem> custom({
    Expression<int>? id,
    Expression<int>? programId,
    Expression<int>? displayOrder,
    Expression<String>? itemType,
    Expression<int>? hymnId,
    Expression<String>? customTitle,
    Expression<String>? customContent,
    Expression<int>? durationMinutes,
    Expression<String>? notes,
    Expression<bool>? isComplete,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (programId != null) 'program_id': programId,
      if (displayOrder != null) 'display_order': displayOrder,
      if (itemType != null) 'item_type': itemType,
      if (hymnId != null) 'hymn_id': hymnId,
      if (customTitle != null) 'custom_title': customTitle,
      if (customContent != null) 'custom_content': customContent,
      if (durationMinutes != null) 'duration_minutes': durationMinutes,
      if (notes != null) 'notes': notes,
      if (isComplete != null) 'is_complete': isComplete,
    });
  }

  ProgramItemsCompanion copyWith(
      {Value<int>? id,
      Value<int>? programId,
      Value<int>? displayOrder,
      Value<String>? itemType,
      Value<int?>? hymnId,
      Value<String?>? customTitle,
      Value<String?>? customContent,
      Value<int?>? durationMinutes,
      Value<String?>? notes,
      Value<bool>? isComplete}) {
    return ProgramItemsCompanion(
      id: id ?? this.id,
      programId: programId ?? this.programId,
      displayOrder: displayOrder ?? this.displayOrder,
      itemType: itemType ?? this.itemType,
      hymnId: hymnId ?? this.hymnId,
      customTitle: customTitle ?? this.customTitle,
      customContent: customContent ?? this.customContent,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      notes: notes ?? this.notes,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (programId.present) {
      map['program_id'] = Variable<int>(programId.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<String>(itemType.value);
    }
    if (hymnId.present) {
      map['hymn_id'] = Variable<int>(hymnId.value);
    }
    if (customTitle.present) {
      map['custom_title'] = Variable<String>(customTitle.value);
    }
    if (customContent.present) {
      map['custom_content'] = Variable<String>(customContent.value);
    }
    if (durationMinutes.present) {
      map['duration_minutes'] = Variable<int>(durationMinutes.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (isComplete.present) {
      map['is_complete'] = Variable<bool>(isComplete.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProgramItemsCompanion(')
          ..write('id: $id, ')
          ..write('programId: $programId, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('itemType: $itemType, ')
          ..write('hymnId: $hymnId, ')
          ..write('customTitle: $customTitle, ')
          ..write('customContent: $customContent, ')
          ..write('durationMinutes: $durationMinutes, ')
          ..write('notes: $notes, ')
          ..write('isComplete: $isComplete')
          ..write(')'))
        .toString();
  }
}

class $UserSettingsTable extends UserSettings
    with TableInfo<$UserSettingsTable, UserSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      clientDefault: () => 1);
  static const VerificationMeta _themeMeta = const VerificationMeta('theme');
  @override
  late final GeneratedColumn<String> theme = GeneratedColumn<String>(
      'theme', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('DEEP_SPACE'));
  static const VerificationMeta _accentColorMeta =
      const VerificationMeta('accentColor');
  @override
  late final GeneratedColumn<String> accentColor = GeneratedColumn<String>(
      'accent_color', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('#D4AF37'));
  static const VerificationMeta _fontSizeMeta =
      const VerificationMeta('fontSize');
  @override
  late final GeneratedColumn<int> fontSize = GeneratedColumn<int>(
      'font_size', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(18));
  static const VerificationMeta _fontFamilyMeta =
      const VerificationMeta('fontFamily');
  @override
  late final GeneratedColumn<String> fontFamily = GeneratedColumn<String>(
      'font_family', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('lora'));
  static const VerificationMeta _lineSpacingMeta =
      const VerificationMeta('lineSpacing');
  @override
  late final GeneratedColumn<String> lineSpacing = GeneratedColumn<String>(
      'line_spacing', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('NORMAL'));
  static const VerificationMeta _readerModeMeta =
      const VerificationMeta('readerMode');
  @override
  late final GeneratedColumn<String> readerMode = GeneratedColumn<String>(
      'reader_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('READING'));
  static const VerificationMeta _showVerseLabelsMeta =
      const VerificationMeta('showVerseLabels');
  @override
  late final GeneratedColumn<bool> showVerseLabels = GeneratedColumn<bool>(
      'show_verse_labels', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_verse_labels" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _showTuneNameMeta =
      const VerificationMeta('showTuneName');
  @override
  late final GeneratedColumn<bool> showTuneName = GeneratedColumn<bool>(
      'show_tune_name', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_tune_name" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _showMeterMeta =
      const VerificationMeta('showMeter');
  @override
  late final GeneratedColumn<bool> showMeter = GeneratedColumn<bool>(
      'show_meter', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("show_meter" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _showComposerMeta =
      const VerificationMeta('showComposer');
  @override
  late final GeneratedColumn<bool> showComposer = GeneratedColumn<bool>(
      'show_composer', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_composer" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _showScriptureRefMeta =
      const VerificationMeta('showScriptureRef');
  @override
  late final GeneratedColumn<bool> showScriptureRef = GeneratedColumn<bool>(
      'show_scripture_ref', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_scripture_ref" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _showChordsMeta =
      const VerificationMeta('showChords');
  @override
  late final GeneratedColumn<bool> showChords = GeneratedColumn<bool>(
      'show_chords', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("show_chords" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _highlightCurrentLineMeta =
      const VerificationMeta('highlightCurrentLine');
  @override
  late final GeneratedColumn<bool> highlightCurrentLine = GeneratedColumn<bool>(
      'highlight_current_line', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("highlight_current_line" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _midiInstrumentMeta =
      const VerificationMeta('midiInstrument');
  @override
  late final GeneratedColumn<String> midiInstrument = GeneratedColumn<String>(
      'midi_instrument', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('ORGAN'));
  static const VerificationMeta _midiTempoMultiplierMeta =
      const VerificationMeta('midiTempoMultiplier');
  @override
  late final GeneratedColumn<double> midiTempoMultiplier =
      GeneratedColumn<double>('midi_tempo_multiplier', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(1.0));
  static const VerificationMeta _midiTransposeMeta =
      const VerificationMeta('midiTranspose');
  @override
  late final GeneratedColumn<int> midiTranspose = GeneratedColumn<int>(
      'midi_transpose', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _midiRepeatModeMeta =
      const VerificationMeta('midiRepeatMode');
  @override
  late final GeneratedColumn<String> midiRepeatMode = GeneratedColumn<String>(
      'midi_repeat_mode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('NONE'));
  static const VerificationMeta _midiCountInMeta =
      const VerificationMeta('midiCountIn');
  @override
  late final GeneratedColumn<bool> midiCountIn = GeneratedColumn<bool>(
      'midi_count_in', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("midi_count_in" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _midiVerseByVerseMeta =
      const VerificationMeta('midiVerseByVerse');
  @override
  late final GeneratedColumn<bool> midiVerseByVerse = GeneratedColumn<bool>(
      'midi_verse_by_verse', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("midi_verse_by_verse" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _autoScrollMeta =
      const VerificationMeta('autoScroll');
  @override
  late final GeneratedColumn<bool> autoScroll = GeneratedColumn<bool>(
      'auto_scroll', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("auto_scroll" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _backgroundPlaybackMeta =
      const VerificationMeta('backgroundPlayback');
  @override
  late final GeneratedColumn<bool> backgroundPlayback = GeneratedColumn<bool>(
      'background_playback', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("background_playback" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _defaultSearchModeMeta =
      const VerificationMeta('defaultSearchMode');
  @override
  late final GeneratedColumn<String> defaultSearchMode =
      GeneratedColumn<String>('default_search_mode', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('TEXT'));
  static const VerificationMeta _searchLanguageFilterMeta =
      const VerificationMeta('searchLanguageFilter');
  @override
  late final GeneratedColumn<String> searchLanguageFilter =
      GeneratedColumn<String>('search_language_filter', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('ALL'));
  static const VerificationMeta _searchCollectionFilterMeta =
      const VerificationMeta('searchCollectionFilter');
  @override
  late final GeneratedColumn<String> searchCollectionFilter =
      GeneratedColumn<String>('search_collection_filter', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('ALL'));
  static const VerificationMeta _savedFiltersJsonMeta =
      const VerificationMeta('savedFiltersJson');
  @override
  late final GeneratedColumn<String> savedFiltersJson = GeneratedColumn<String>(
      'saved_filters_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _activeCollectionIdsMeta =
      const VerificationMeta('activeCollectionIds');
  @override
  late final GeneratedColumn<String> activeCollectionIds =
      GeneratedColumn<String>('active_collection_ids', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('[1,2]'));
  static const VerificationMeta _displayLanguageMeta =
      const VerificationMeta('displayLanguage');
  @override
  late final GeneratedColumn<String> displayLanguage = GeneratedColumn<String>(
      'display_language', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('en'));
  static const VerificationMeta _showIntroAnimationMeta =
      const VerificationMeta('showIntroAnimation');
  @override
  late final GeneratedColumn<bool> showIntroAnimation = GeneratedColumn<bool>(
      'show_intro_animation', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_intro_animation" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _reduceMotionMeta =
      const VerificationMeta('reduceMotion');
  @override
  late final GeneratedColumn<bool> reduceMotion = GeneratedColumn<bool>(
      'reduce_motion', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("reduce_motion" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _premiumStatusMeta =
      const VerificationMeta('premiumStatus');
  @override
  late final GeneratedColumn<String> premiumStatus = GeneratedColumn<String>(
      'premium_status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('FREE'));
  static const VerificationMeta _premiumExpiryMeta =
      const VerificationMeta('premiumExpiry');
  @override
  late final GeneratedColumn<int> premiumExpiry = GeneratedColumn<int>(
      'premium_expiry', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cloudSyncEnabledMeta =
      const VerificationMeta('cloudSyncEnabled');
  @override
  late final GeneratedColumn<bool> cloudSyncEnabled = GeneratedColumn<bool>(
      'cloud_sync_enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("cloud_sync_enabled" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _analyticsEnabledMeta =
      const VerificationMeta('analyticsEnabled');
  @override
  late final GeneratedColumn<bool> analyticsEnabled = GeneratedColumn<bool>(
      'analytics_enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("analytics_enabled" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        theme,
        accentColor,
        fontSize,
        fontFamily,
        lineSpacing,
        readerMode,
        showVerseLabels,
        showTuneName,
        showMeter,
        showComposer,
        showScriptureRef,
        showChords,
        highlightCurrentLine,
        midiInstrument,
        midiTempoMultiplier,
        midiTranspose,
        midiRepeatMode,
        midiCountIn,
        midiVerseByVerse,
        autoScroll,
        backgroundPlayback,
        defaultSearchMode,
        searchLanguageFilter,
        searchCollectionFilter,
        savedFiltersJson,
        activeCollectionIds,
        displayLanguage,
        showIntroAnimation,
        reduceMotion,
        premiumStatus,
        premiumExpiry,
        cloudSyncEnabled,
        analyticsEnabled
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_settings';
  @override
  VerificationContext validateIntegrity(Insertable<UserSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('theme')) {
      context.handle(
          _themeMeta, theme.isAcceptableOrUnknown(data['theme']!, _themeMeta));
    }
    if (data.containsKey('accent_color')) {
      context.handle(
          _accentColorMeta,
          accentColor.isAcceptableOrUnknown(
              data['accent_color']!, _accentColorMeta));
    }
    if (data.containsKey('font_size')) {
      context.handle(_fontSizeMeta,
          fontSize.isAcceptableOrUnknown(data['font_size']!, _fontSizeMeta));
    }
    if (data.containsKey('font_family')) {
      context.handle(
          _fontFamilyMeta,
          fontFamily.isAcceptableOrUnknown(
              data['font_family']!, _fontFamilyMeta));
    }
    if (data.containsKey('line_spacing')) {
      context.handle(
          _lineSpacingMeta,
          lineSpacing.isAcceptableOrUnknown(
              data['line_spacing']!, _lineSpacingMeta));
    }
    if (data.containsKey('reader_mode')) {
      context.handle(
          _readerModeMeta,
          readerMode.isAcceptableOrUnknown(
              data['reader_mode']!, _readerModeMeta));
    }
    if (data.containsKey('show_verse_labels')) {
      context.handle(
          _showVerseLabelsMeta,
          showVerseLabels.isAcceptableOrUnknown(
              data['show_verse_labels']!, _showVerseLabelsMeta));
    }
    if (data.containsKey('show_tune_name')) {
      context.handle(
          _showTuneNameMeta,
          showTuneName.isAcceptableOrUnknown(
              data['show_tune_name']!, _showTuneNameMeta));
    }
    if (data.containsKey('show_meter')) {
      context.handle(_showMeterMeta,
          showMeter.isAcceptableOrUnknown(data['show_meter']!, _showMeterMeta));
    }
    if (data.containsKey('show_composer')) {
      context.handle(
          _showComposerMeta,
          showComposer.isAcceptableOrUnknown(
              data['show_composer']!, _showComposerMeta));
    }
    if (data.containsKey('show_scripture_ref')) {
      context.handle(
          _showScriptureRefMeta,
          showScriptureRef.isAcceptableOrUnknown(
              data['show_scripture_ref']!, _showScriptureRefMeta));
    }
    if (data.containsKey('show_chords')) {
      context.handle(
          _showChordsMeta,
          showChords.isAcceptableOrUnknown(
              data['show_chords']!, _showChordsMeta));
    }
    if (data.containsKey('highlight_current_line')) {
      context.handle(
          _highlightCurrentLineMeta,
          highlightCurrentLine.isAcceptableOrUnknown(
              data['highlight_current_line']!, _highlightCurrentLineMeta));
    }
    if (data.containsKey('midi_instrument')) {
      context.handle(
          _midiInstrumentMeta,
          midiInstrument.isAcceptableOrUnknown(
              data['midi_instrument']!, _midiInstrumentMeta));
    }
    if (data.containsKey('midi_tempo_multiplier')) {
      context.handle(
          _midiTempoMultiplierMeta,
          midiTempoMultiplier.isAcceptableOrUnknown(
              data['midi_tempo_multiplier']!, _midiTempoMultiplierMeta));
    }
    if (data.containsKey('midi_transpose')) {
      context.handle(
          _midiTransposeMeta,
          midiTranspose.isAcceptableOrUnknown(
              data['midi_transpose']!, _midiTransposeMeta));
    }
    if (data.containsKey('midi_repeat_mode')) {
      context.handle(
          _midiRepeatModeMeta,
          midiRepeatMode.isAcceptableOrUnknown(
              data['midi_repeat_mode']!, _midiRepeatModeMeta));
    }
    if (data.containsKey('midi_count_in')) {
      context.handle(
          _midiCountInMeta,
          midiCountIn.isAcceptableOrUnknown(
              data['midi_count_in']!, _midiCountInMeta));
    }
    if (data.containsKey('midi_verse_by_verse')) {
      context.handle(
          _midiVerseByVerseMeta,
          midiVerseByVerse.isAcceptableOrUnknown(
              data['midi_verse_by_verse']!, _midiVerseByVerseMeta));
    }
    if (data.containsKey('auto_scroll')) {
      context.handle(
          _autoScrollMeta,
          autoScroll.isAcceptableOrUnknown(
              data['auto_scroll']!, _autoScrollMeta));
    }
    if (data.containsKey('background_playback')) {
      context.handle(
          _backgroundPlaybackMeta,
          backgroundPlayback.isAcceptableOrUnknown(
              data['background_playback']!, _backgroundPlaybackMeta));
    }
    if (data.containsKey('default_search_mode')) {
      context.handle(
          _defaultSearchModeMeta,
          defaultSearchMode.isAcceptableOrUnknown(
              data['default_search_mode']!, _defaultSearchModeMeta));
    }
    if (data.containsKey('search_language_filter')) {
      context.handle(
          _searchLanguageFilterMeta,
          searchLanguageFilter.isAcceptableOrUnknown(
              data['search_language_filter']!, _searchLanguageFilterMeta));
    }
    if (data.containsKey('search_collection_filter')) {
      context.handle(
          _searchCollectionFilterMeta,
          searchCollectionFilter.isAcceptableOrUnknown(
              data['search_collection_filter']!, _searchCollectionFilterMeta));
    }
    if (data.containsKey('saved_filters_json')) {
      context.handle(
          _savedFiltersJsonMeta,
          savedFiltersJson.isAcceptableOrUnknown(
              data['saved_filters_json']!, _savedFiltersJsonMeta));
    }
    if (data.containsKey('active_collection_ids')) {
      context.handle(
          _activeCollectionIdsMeta,
          activeCollectionIds.isAcceptableOrUnknown(
              data['active_collection_ids']!, _activeCollectionIdsMeta));
    }
    if (data.containsKey('display_language')) {
      context.handle(
          _displayLanguageMeta,
          displayLanguage.isAcceptableOrUnknown(
              data['display_language']!, _displayLanguageMeta));
    }
    if (data.containsKey('show_intro_animation')) {
      context.handle(
          _showIntroAnimationMeta,
          showIntroAnimation.isAcceptableOrUnknown(
              data['show_intro_animation']!, _showIntroAnimationMeta));
    }
    if (data.containsKey('reduce_motion')) {
      context.handle(
          _reduceMotionMeta,
          reduceMotion.isAcceptableOrUnknown(
              data['reduce_motion']!, _reduceMotionMeta));
    }
    if (data.containsKey('premium_status')) {
      context.handle(
          _premiumStatusMeta,
          premiumStatus.isAcceptableOrUnknown(
              data['premium_status']!, _premiumStatusMeta));
    }
    if (data.containsKey('premium_expiry')) {
      context.handle(
          _premiumExpiryMeta,
          premiumExpiry.isAcceptableOrUnknown(
              data['premium_expiry']!, _premiumExpiryMeta));
    }
    if (data.containsKey('cloud_sync_enabled')) {
      context.handle(
          _cloudSyncEnabledMeta,
          cloudSyncEnabled.isAcceptableOrUnknown(
              data['cloud_sync_enabled']!, _cloudSyncEnabledMeta));
    }
    if (data.containsKey('analytics_enabled')) {
      context.handle(
          _analyticsEnabledMeta,
          analyticsEnabled.isAcceptableOrUnknown(
              data['analytics_enabled']!, _analyticsEnabledMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserSetting(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      theme: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme'])!,
      accentColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}accent_color'])!,
      fontSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}font_size'])!,
      fontFamily: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}font_family'])!,
      lineSpacing: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}line_spacing'])!,
      readerMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reader_mode'])!,
      showVerseLabels: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_verse_labels'])!,
      showTuneName: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_tune_name'])!,
      showMeter: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_meter'])!,
      showComposer: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_composer'])!,
      showScriptureRef: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_scripture_ref'])!,
      showChords: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_chords'])!,
      highlightCurrentLine: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}highlight_current_line'])!,
      midiInstrument: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}midi_instrument'])!,
      midiTempoMultiplier: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}midi_tempo_multiplier'])!,
      midiTranspose: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}midi_transpose'])!,
      midiRepeatMode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}midi_repeat_mode'])!,
      midiCountIn: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}midi_count_in'])!,
      midiVerseByVerse: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}midi_verse_by_verse'])!,
      autoScroll: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}auto_scroll'])!,
      backgroundPlayback: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}background_playback'])!,
      defaultSearchMode: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}default_search_mode'])!,
      searchLanguageFilter: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}search_language_filter'])!,
      searchCollectionFilter: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}search_collection_filter'])!,
      savedFiltersJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}saved_filters_json']),
      activeCollectionIds: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}active_collection_ids'])!,
      displayLanguage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}display_language'])!,
      showIntroAnimation: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_intro_animation'])!,
      reduceMotion: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}reduce_motion'])!,
      premiumStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}premium_status'])!,
      premiumExpiry: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}premium_expiry']),
      cloudSyncEnabled: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}cloud_sync_enabled'])!,
      analyticsEnabled: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}analytics_enabled'])!,
    );
  }

  @override
  $UserSettingsTable createAlias(String alias) {
    return $UserSettingsTable(attachedDatabase, alias);
  }
}

class UserSetting extends DataClass implements Insertable<UserSetting> {
  final int id;
  final String theme;
  final String accentColor;
  final int fontSize;
  final String fontFamily;
  final String lineSpacing;
  final String readerMode;
  final bool showVerseLabels;
  final bool showTuneName;
  final bool showMeter;
  final bool showComposer;
  final bool showScriptureRef;
  final bool showChords;
  final bool highlightCurrentLine;
  final String midiInstrument;
  final double midiTempoMultiplier;
  final int midiTranspose;
  final String midiRepeatMode;
  final bool midiCountIn;
  final bool midiVerseByVerse;
  final bool autoScroll;
  final bool backgroundPlayback;
  final String defaultSearchMode;
  final String searchLanguageFilter;
  final String searchCollectionFilter;
  final String? savedFiltersJson;
  final String activeCollectionIds;
  final String displayLanguage;
  final bool showIntroAnimation;
  final bool reduceMotion;
  final String premiumStatus;
  final int? premiumExpiry;
  final bool cloudSyncEnabled;
  final bool analyticsEnabled;
  const UserSetting(
      {required this.id,
      required this.theme,
      required this.accentColor,
      required this.fontSize,
      required this.fontFamily,
      required this.lineSpacing,
      required this.readerMode,
      required this.showVerseLabels,
      required this.showTuneName,
      required this.showMeter,
      required this.showComposer,
      required this.showScriptureRef,
      required this.showChords,
      required this.highlightCurrentLine,
      required this.midiInstrument,
      required this.midiTempoMultiplier,
      required this.midiTranspose,
      required this.midiRepeatMode,
      required this.midiCountIn,
      required this.midiVerseByVerse,
      required this.autoScroll,
      required this.backgroundPlayback,
      required this.defaultSearchMode,
      required this.searchLanguageFilter,
      required this.searchCollectionFilter,
      this.savedFiltersJson,
      required this.activeCollectionIds,
      required this.displayLanguage,
      required this.showIntroAnimation,
      required this.reduceMotion,
      required this.premiumStatus,
      this.premiumExpiry,
      required this.cloudSyncEnabled,
      required this.analyticsEnabled});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['theme'] = Variable<String>(theme);
    map['accent_color'] = Variable<String>(accentColor);
    map['font_size'] = Variable<int>(fontSize);
    map['font_family'] = Variable<String>(fontFamily);
    map['line_spacing'] = Variable<String>(lineSpacing);
    map['reader_mode'] = Variable<String>(readerMode);
    map['show_verse_labels'] = Variable<bool>(showVerseLabels);
    map['show_tune_name'] = Variable<bool>(showTuneName);
    map['show_meter'] = Variable<bool>(showMeter);
    map['show_composer'] = Variable<bool>(showComposer);
    map['show_scripture_ref'] = Variable<bool>(showScriptureRef);
    map['show_chords'] = Variable<bool>(showChords);
    map['highlight_current_line'] = Variable<bool>(highlightCurrentLine);
    map['midi_instrument'] = Variable<String>(midiInstrument);
    map['midi_tempo_multiplier'] = Variable<double>(midiTempoMultiplier);
    map['midi_transpose'] = Variable<int>(midiTranspose);
    map['midi_repeat_mode'] = Variable<String>(midiRepeatMode);
    map['midi_count_in'] = Variable<bool>(midiCountIn);
    map['midi_verse_by_verse'] = Variable<bool>(midiVerseByVerse);
    map['auto_scroll'] = Variable<bool>(autoScroll);
    map['background_playback'] = Variable<bool>(backgroundPlayback);
    map['default_search_mode'] = Variable<String>(defaultSearchMode);
    map['search_language_filter'] = Variable<String>(searchLanguageFilter);
    map['search_collection_filter'] = Variable<String>(searchCollectionFilter);
    if (!nullToAbsent || savedFiltersJson != null) {
      map['saved_filters_json'] = Variable<String>(savedFiltersJson);
    }
    map['active_collection_ids'] = Variable<String>(activeCollectionIds);
    map['display_language'] = Variable<String>(displayLanguage);
    map['show_intro_animation'] = Variable<bool>(showIntroAnimation);
    map['reduce_motion'] = Variable<bool>(reduceMotion);
    map['premium_status'] = Variable<String>(premiumStatus);
    if (!nullToAbsent || premiumExpiry != null) {
      map['premium_expiry'] = Variable<int>(premiumExpiry);
    }
    map['cloud_sync_enabled'] = Variable<bool>(cloudSyncEnabled);
    map['analytics_enabled'] = Variable<bool>(analyticsEnabled);
    return map;
  }

  UserSettingsCompanion toCompanion(bool nullToAbsent) {
    return UserSettingsCompanion(
      id: Value(id),
      theme: Value(theme),
      accentColor: Value(accentColor),
      fontSize: Value(fontSize),
      fontFamily: Value(fontFamily),
      lineSpacing: Value(lineSpacing),
      readerMode: Value(readerMode),
      showVerseLabels: Value(showVerseLabels),
      showTuneName: Value(showTuneName),
      showMeter: Value(showMeter),
      showComposer: Value(showComposer),
      showScriptureRef: Value(showScriptureRef),
      showChords: Value(showChords),
      highlightCurrentLine: Value(highlightCurrentLine),
      midiInstrument: Value(midiInstrument),
      midiTempoMultiplier: Value(midiTempoMultiplier),
      midiTranspose: Value(midiTranspose),
      midiRepeatMode: Value(midiRepeatMode),
      midiCountIn: Value(midiCountIn),
      midiVerseByVerse: Value(midiVerseByVerse),
      autoScroll: Value(autoScroll),
      backgroundPlayback: Value(backgroundPlayback),
      defaultSearchMode: Value(defaultSearchMode),
      searchLanguageFilter: Value(searchLanguageFilter),
      searchCollectionFilter: Value(searchCollectionFilter),
      savedFiltersJson: savedFiltersJson == null && nullToAbsent
          ? const Value.absent()
          : Value(savedFiltersJson),
      activeCollectionIds: Value(activeCollectionIds),
      displayLanguage: Value(displayLanguage),
      showIntroAnimation: Value(showIntroAnimation),
      reduceMotion: Value(reduceMotion),
      premiumStatus: Value(premiumStatus),
      premiumExpiry: premiumExpiry == null && nullToAbsent
          ? const Value.absent()
          : Value(premiumExpiry),
      cloudSyncEnabled: Value(cloudSyncEnabled),
      analyticsEnabled: Value(analyticsEnabled),
    );
  }

  factory UserSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserSetting(
      id: serializer.fromJson<int>(json['id']),
      theme: serializer.fromJson<String>(json['theme']),
      accentColor: serializer.fromJson<String>(json['accentColor']),
      fontSize: serializer.fromJson<int>(json['fontSize']),
      fontFamily: serializer.fromJson<String>(json['fontFamily']),
      lineSpacing: serializer.fromJson<String>(json['lineSpacing']),
      readerMode: serializer.fromJson<String>(json['readerMode']),
      showVerseLabels: serializer.fromJson<bool>(json['showVerseLabels']),
      showTuneName: serializer.fromJson<bool>(json['showTuneName']),
      showMeter: serializer.fromJson<bool>(json['showMeter']),
      showComposer: serializer.fromJson<bool>(json['showComposer']),
      showScriptureRef: serializer.fromJson<bool>(json['showScriptureRef']),
      showChords: serializer.fromJson<bool>(json['showChords']),
      highlightCurrentLine:
          serializer.fromJson<bool>(json['highlightCurrentLine']),
      midiInstrument: serializer.fromJson<String>(json['midiInstrument']),
      midiTempoMultiplier:
          serializer.fromJson<double>(json['midiTempoMultiplier']),
      midiTranspose: serializer.fromJson<int>(json['midiTranspose']),
      midiRepeatMode: serializer.fromJson<String>(json['midiRepeatMode']),
      midiCountIn: serializer.fromJson<bool>(json['midiCountIn']),
      midiVerseByVerse: serializer.fromJson<bool>(json['midiVerseByVerse']),
      autoScroll: serializer.fromJson<bool>(json['autoScroll']),
      backgroundPlayback: serializer.fromJson<bool>(json['backgroundPlayback']),
      defaultSearchMode: serializer.fromJson<String>(json['defaultSearchMode']),
      searchLanguageFilter:
          serializer.fromJson<String>(json['searchLanguageFilter']),
      searchCollectionFilter:
          serializer.fromJson<String>(json['searchCollectionFilter']),
      savedFiltersJson: serializer.fromJson<String?>(json['savedFiltersJson']),
      activeCollectionIds:
          serializer.fromJson<String>(json['activeCollectionIds']),
      displayLanguage: serializer.fromJson<String>(json['displayLanguage']),
      showIntroAnimation: serializer.fromJson<bool>(json['showIntroAnimation']),
      reduceMotion: serializer.fromJson<bool>(json['reduceMotion']),
      premiumStatus: serializer.fromJson<String>(json['premiumStatus']),
      premiumExpiry: serializer.fromJson<int?>(json['premiumExpiry']),
      cloudSyncEnabled: serializer.fromJson<bool>(json['cloudSyncEnabled']),
      analyticsEnabled: serializer.fromJson<bool>(json['analyticsEnabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'theme': serializer.toJson<String>(theme),
      'accentColor': serializer.toJson<String>(accentColor),
      'fontSize': serializer.toJson<int>(fontSize),
      'fontFamily': serializer.toJson<String>(fontFamily),
      'lineSpacing': serializer.toJson<String>(lineSpacing),
      'readerMode': serializer.toJson<String>(readerMode),
      'showVerseLabels': serializer.toJson<bool>(showVerseLabels),
      'showTuneName': serializer.toJson<bool>(showTuneName),
      'showMeter': serializer.toJson<bool>(showMeter),
      'showComposer': serializer.toJson<bool>(showComposer),
      'showScriptureRef': serializer.toJson<bool>(showScriptureRef),
      'showChords': serializer.toJson<bool>(showChords),
      'highlightCurrentLine': serializer.toJson<bool>(highlightCurrentLine),
      'midiInstrument': serializer.toJson<String>(midiInstrument),
      'midiTempoMultiplier': serializer.toJson<double>(midiTempoMultiplier),
      'midiTranspose': serializer.toJson<int>(midiTranspose),
      'midiRepeatMode': serializer.toJson<String>(midiRepeatMode),
      'midiCountIn': serializer.toJson<bool>(midiCountIn),
      'midiVerseByVerse': serializer.toJson<bool>(midiVerseByVerse),
      'autoScroll': serializer.toJson<bool>(autoScroll),
      'backgroundPlayback': serializer.toJson<bool>(backgroundPlayback),
      'defaultSearchMode': serializer.toJson<String>(defaultSearchMode),
      'searchLanguageFilter': serializer.toJson<String>(searchLanguageFilter),
      'searchCollectionFilter':
          serializer.toJson<String>(searchCollectionFilter),
      'savedFiltersJson': serializer.toJson<String?>(savedFiltersJson),
      'activeCollectionIds': serializer.toJson<String>(activeCollectionIds),
      'displayLanguage': serializer.toJson<String>(displayLanguage),
      'showIntroAnimation': serializer.toJson<bool>(showIntroAnimation),
      'reduceMotion': serializer.toJson<bool>(reduceMotion),
      'premiumStatus': serializer.toJson<String>(premiumStatus),
      'premiumExpiry': serializer.toJson<int?>(premiumExpiry),
      'cloudSyncEnabled': serializer.toJson<bool>(cloudSyncEnabled),
      'analyticsEnabled': serializer.toJson<bool>(analyticsEnabled),
    };
  }

  UserSetting copyWith(
          {int? id,
          String? theme,
          String? accentColor,
          int? fontSize,
          String? fontFamily,
          String? lineSpacing,
          String? readerMode,
          bool? showVerseLabels,
          bool? showTuneName,
          bool? showMeter,
          bool? showComposer,
          bool? showScriptureRef,
          bool? showChords,
          bool? highlightCurrentLine,
          String? midiInstrument,
          double? midiTempoMultiplier,
          int? midiTranspose,
          String? midiRepeatMode,
          bool? midiCountIn,
          bool? midiVerseByVerse,
          bool? autoScroll,
          bool? backgroundPlayback,
          String? defaultSearchMode,
          String? searchLanguageFilter,
          String? searchCollectionFilter,
          Value<String?> savedFiltersJson = const Value.absent(),
          String? activeCollectionIds,
          String? displayLanguage,
          bool? showIntroAnimation,
          bool? reduceMotion,
          String? premiumStatus,
          Value<int?> premiumExpiry = const Value.absent(),
          bool? cloudSyncEnabled,
          bool? analyticsEnabled}) =>
      UserSetting(
        id: id ?? this.id,
        theme: theme ?? this.theme,
        accentColor: accentColor ?? this.accentColor,
        fontSize: fontSize ?? this.fontSize,
        fontFamily: fontFamily ?? this.fontFamily,
        lineSpacing: lineSpacing ?? this.lineSpacing,
        readerMode: readerMode ?? this.readerMode,
        showVerseLabels: showVerseLabels ?? this.showVerseLabels,
        showTuneName: showTuneName ?? this.showTuneName,
        showMeter: showMeter ?? this.showMeter,
        showComposer: showComposer ?? this.showComposer,
        showScriptureRef: showScriptureRef ?? this.showScriptureRef,
        showChords: showChords ?? this.showChords,
        highlightCurrentLine: highlightCurrentLine ?? this.highlightCurrentLine,
        midiInstrument: midiInstrument ?? this.midiInstrument,
        midiTempoMultiplier: midiTempoMultiplier ?? this.midiTempoMultiplier,
        midiTranspose: midiTranspose ?? this.midiTranspose,
        midiRepeatMode: midiRepeatMode ?? this.midiRepeatMode,
        midiCountIn: midiCountIn ?? this.midiCountIn,
        midiVerseByVerse: midiVerseByVerse ?? this.midiVerseByVerse,
        autoScroll: autoScroll ?? this.autoScroll,
        backgroundPlayback: backgroundPlayback ?? this.backgroundPlayback,
        defaultSearchMode: defaultSearchMode ?? this.defaultSearchMode,
        searchLanguageFilter: searchLanguageFilter ?? this.searchLanguageFilter,
        searchCollectionFilter:
            searchCollectionFilter ?? this.searchCollectionFilter,
        savedFiltersJson: savedFiltersJson.present
            ? savedFiltersJson.value
            : this.savedFiltersJson,
        activeCollectionIds: activeCollectionIds ?? this.activeCollectionIds,
        displayLanguage: displayLanguage ?? this.displayLanguage,
        showIntroAnimation: showIntroAnimation ?? this.showIntroAnimation,
        reduceMotion: reduceMotion ?? this.reduceMotion,
        premiumStatus: premiumStatus ?? this.premiumStatus,
        premiumExpiry:
            premiumExpiry.present ? premiumExpiry.value : this.premiumExpiry,
        cloudSyncEnabled: cloudSyncEnabled ?? this.cloudSyncEnabled,
        analyticsEnabled: analyticsEnabled ?? this.analyticsEnabled,
      );
  @override
  String toString() {
    return (StringBuffer('UserSetting(')
          ..write('id: $id, ')
          ..write('theme: $theme, ')
          ..write('accentColor: $accentColor, ')
          ..write('fontSize: $fontSize, ')
          ..write('fontFamily: $fontFamily, ')
          ..write('lineSpacing: $lineSpacing, ')
          ..write('readerMode: $readerMode, ')
          ..write('showVerseLabels: $showVerseLabels, ')
          ..write('showTuneName: $showTuneName, ')
          ..write('showMeter: $showMeter, ')
          ..write('showComposer: $showComposer, ')
          ..write('showScriptureRef: $showScriptureRef, ')
          ..write('showChords: $showChords, ')
          ..write('highlightCurrentLine: $highlightCurrentLine, ')
          ..write('midiInstrument: $midiInstrument, ')
          ..write('midiTempoMultiplier: $midiTempoMultiplier, ')
          ..write('midiTranspose: $midiTranspose, ')
          ..write('midiRepeatMode: $midiRepeatMode, ')
          ..write('midiCountIn: $midiCountIn, ')
          ..write('midiVerseByVerse: $midiVerseByVerse, ')
          ..write('autoScroll: $autoScroll, ')
          ..write('backgroundPlayback: $backgroundPlayback, ')
          ..write('defaultSearchMode: $defaultSearchMode, ')
          ..write('searchLanguageFilter: $searchLanguageFilter, ')
          ..write('searchCollectionFilter: $searchCollectionFilter, ')
          ..write('savedFiltersJson: $savedFiltersJson, ')
          ..write('activeCollectionIds: $activeCollectionIds, ')
          ..write('displayLanguage: $displayLanguage, ')
          ..write('showIntroAnimation: $showIntroAnimation, ')
          ..write('reduceMotion: $reduceMotion, ')
          ..write('premiumStatus: $premiumStatus, ')
          ..write('premiumExpiry: $premiumExpiry, ')
          ..write('cloudSyncEnabled: $cloudSyncEnabled, ')
          ..write('analyticsEnabled: $analyticsEnabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        theme,
        accentColor,
        fontSize,
        fontFamily,
        lineSpacing,
        readerMode,
        showVerseLabels,
        showTuneName,
        showMeter,
        showComposer,
        showScriptureRef,
        showChords,
        highlightCurrentLine,
        midiInstrument,
        midiTempoMultiplier,
        midiTranspose,
        midiRepeatMode,
        midiCountIn,
        midiVerseByVerse,
        autoScroll,
        backgroundPlayback,
        defaultSearchMode,
        searchLanguageFilter,
        searchCollectionFilter,
        savedFiltersJson,
        activeCollectionIds,
        displayLanguage,
        showIntroAnimation,
        reduceMotion,
        premiumStatus,
        premiumExpiry,
        cloudSyncEnabled,
        analyticsEnabled
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserSetting &&
          other.id == this.id &&
          other.theme == this.theme &&
          other.accentColor == this.accentColor &&
          other.fontSize == this.fontSize &&
          other.fontFamily == this.fontFamily &&
          other.lineSpacing == this.lineSpacing &&
          other.readerMode == this.readerMode &&
          other.showVerseLabels == this.showVerseLabels &&
          other.showTuneName == this.showTuneName &&
          other.showMeter == this.showMeter &&
          other.showComposer == this.showComposer &&
          other.showScriptureRef == this.showScriptureRef &&
          other.showChords == this.showChords &&
          other.highlightCurrentLine == this.highlightCurrentLine &&
          other.midiInstrument == this.midiInstrument &&
          other.midiTempoMultiplier == this.midiTempoMultiplier &&
          other.midiTranspose == this.midiTranspose &&
          other.midiRepeatMode == this.midiRepeatMode &&
          other.midiCountIn == this.midiCountIn &&
          other.midiVerseByVerse == this.midiVerseByVerse &&
          other.autoScroll == this.autoScroll &&
          other.backgroundPlayback == this.backgroundPlayback &&
          other.defaultSearchMode == this.defaultSearchMode &&
          other.searchLanguageFilter == this.searchLanguageFilter &&
          other.searchCollectionFilter == this.searchCollectionFilter &&
          other.savedFiltersJson == this.savedFiltersJson &&
          other.activeCollectionIds == this.activeCollectionIds &&
          other.displayLanguage == this.displayLanguage &&
          other.showIntroAnimation == this.showIntroAnimation &&
          other.reduceMotion == this.reduceMotion &&
          other.premiumStatus == this.premiumStatus &&
          other.premiumExpiry == this.premiumExpiry &&
          other.cloudSyncEnabled == this.cloudSyncEnabled &&
          other.analyticsEnabled == this.analyticsEnabled);
}

class UserSettingsCompanion extends UpdateCompanion<UserSetting> {
  final Value<int> id;
  final Value<String> theme;
  final Value<String> accentColor;
  final Value<int> fontSize;
  final Value<String> fontFamily;
  final Value<String> lineSpacing;
  final Value<String> readerMode;
  final Value<bool> showVerseLabels;
  final Value<bool> showTuneName;
  final Value<bool> showMeter;
  final Value<bool> showComposer;
  final Value<bool> showScriptureRef;
  final Value<bool> showChords;
  final Value<bool> highlightCurrentLine;
  final Value<String> midiInstrument;
  final Value<double> midiTempoMultiplier;
  final Value<int> midiTranspose;
  final Value<String> midiRepeatMode;
  final Value<bool> midiCountIn;
  final Value<bool> midiVerseByVerse;
  final Value<bool> autoScroll;
  final Value<bool> backgroundPlayback;
  final Value<String> defaultSearchMode;
  final Value<String> searchLanguageFilter;
  final Value<String> searchCollectionFilter;
  final Value<String?> savedFiltersJson;
  final Value<String> activeCollectionIds;
  final Value<String> displayLanguage;
  final Value<bool> showIntroAnimation;
  final Value<bool> reduceMotion;
  final Value<String> premiumStatus;
  final Value<int?> premiumExpiry;
  final Value<bool> cloudSyncEnabled;
  final Value<bool> analyticsEnabled;
  final Value<int> rowid;
  const UserSettingsCompanion({
    this.id = const Value.absent(),
    this.theme = const Value.absent(),
    this.accentColor = const Value.absent(),
    this.fontSize = const Value.absent(),
    this.fontFamily = const Value.absent(),
    this.lineSpacing = const Value.absent(),
    this.readerMode = const Value.absent(),
    this.showVerseLabels = const Value.absent(),
    this.showTuneName = const Value.absent(),
    this.showMeter = const Value.absent(),
    this.showComposer = const Value.absent(),
    this.showScriptureRef = const Value.absent(),
    this.showChords = const Value.absent(),
    this.highlightCurrentLine = const Value.absent(),
    this.midiInstrument = const Value.absent(),
    this.midiTempoMultiplier = const Value.absent(),
    this.midiTranspose = const Value.absent(),
    this.midiRepeatMode = const Value.absent(),
    this.midiCountIn = const Value.absent(),
    this.midiVerseByVerse = const Value.absent(),
    this.autoScroll = const Value.absent(),
    this.backgroundPlayback = const Value.absent(),
    this.defaultSearchMode = const Value.absent(),
    this.searchLanguageFilter = const Value.absent(),
    this.searchCollectionFilter = const Value.absent(),
    this.savedFiltersJson = const Value.absent(),
    this.activeCollectionIds = const Value.absent(),
    this.displayLanguage = const Value.absent(),
    this.showIntroAnimation = const Value.absent(),
    this.reduceMotion = const Value.absent(),
    this.premiumStatus = const Value.absent(),
    this.premiumExpiry = const Value.absent(),
    this.cloudSyncEnabled = const Value.absent(),
    this.analyticsEnabled = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserSettingsCompanion.insert({
    this.id = const Value.absent(),
    this.theme = const Value.absent(),
    this.accentColor = const Value.absent(),
    this.fontSize = const Value.absent(),
    this.fontFamily = const Value.absent(),
    this.lineSpacing = const Value.absent(),
    this.readerMode = const Value.absent(),
    this.showVerseLabels = const Value.absent(),
    this.showTuneName = const Value.absent(),
    this.showMeter = const Value.absent(),
    this.showComposer = const Value.absent(),
    this.showScriptureRef = const Value.absent(),
    this.showChords = const Value.absent(),
    this.highlightCurrentLine = const Value.absent(),
    this.midiInstrument = const Value.absent(),
    this.midiTempoMultiplier = const Value.absent(),
    this.midiTranspose = const Value.absent(),
    this.midiRepeatMode = const Value.absent(),
    this.midiCountIn = const Value.absent(),
    this.midiVerseByVerse = const Value.absent(),
    this.autoScroll = const Value.absent(),
    this.backgroundPlayback = const Value.absent(),
    this.defaultSearchMode = const Value.absent(),
    this.searchLanguageFilter = const Value.absent(),
    this.searchCollectionFilter = const Value.absent(),
    this.savedFiltersJson = const Value.absent(),
    this.activeCollectionIds = const Value.absent(),
    this.displayLanguage = const Value.absent(),
    this.showIntroAnimation = const Value.absent(),
    this.reduceMotion = const Value.absent(),
    this.premiumStatus = const Value.absent(),
    this.premiumExpiry = const Value.absent(),
    this.cloudSyncEnabled = const Value.absent(),
    this.analyticsEnabled = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<UserSetting> custom({
    Expression<int>? id,
    Expression<String>? theme,
    Expression<String>? accentColor,
    Expression<int>? fontSize,
    Expression<String>? fontFamily,
    Expression<String>? lineSpacing,
    Expression<String>? readerMode,
    Expression<bool>? showVerseLabels,
    Expression<bool>? showTuneName,
    Expression<bool>? showMeter,
    Expression<bool>? showComposer,
    Expression<bool>? showScriptureRef,
    Expression<bool>? showChords,
    Expression<bool>? highlightCurrentLine,
    Expression<String>? midiInstrument,
    Expression<double>? midiTempoMultiplier,
    Expression<int>? midiTranspose,
    Expression<String>? midiRepeatMode,
    Expression<bool>? midiCountIn,
    Expression<bool>? midiVerseByVerse,
    Expression<bool>? autoScroll,
    Expression<bool>? backgroundPlayback,
    Expression<String>? defaultSearchMode,
    Expression<String>? searchLanguageFilter,
    Expression<String>? searchCollectionFilter,
    Expression<String>? savedFiltersJson,
    Expression<String>? activeCollectionIds,
    Expression<String>? displayLanguage,
    Expression<bool>? showIntroAnimation,
    Expression<bool>? reduceMotion,
    Expression<String>? premiumStatus,
    Expression<int>? premiumExpiry,
    Expression<bool>? cloudSyncEnabled,
    Expression<bool>? analyticsEnabled,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (theme != null) 'theme': theme,
      if (accentColor != null) 'accent_color': accentColor,
      if (fontSize != null) 'font_size': fontSize,
      if (fontFamily != null) 'font_family': fontFamily,
      if (lineSpacing != null) 'line_spacing': lineSpacing,
      if (readerMode != null) 'reader_mode': readerMode,
      if (showVerseLabels != null) 'show_verse_labels': showVerseLabels,
      if (showTuneName != null) 'show_tune_name': showTuneName,
      if (showMeter != null) 'show_meter': showMeter,
      if (showComposer != null) 'show_composer': showComposer,
      if (showScriptureRef != null) 'show_scripture_ref': showScriptureRef,
      if (showChords != null) 'show_chords': showChords,
      if (highlightCurrentLine != null)
        'highlight_current_line': highlightCurrentLine,
      if (midiInstrument != null) 'midi_instrument': midiInstrument,
      if (midiTempoMultiplier != null)
        'midi_tempo_multiplier': midiTempoMultiplier,
      if (midiTranspose != null) 'midi_transpose': midiTranspose,
      if (midiRepeatMode != null) 'midi_repeat_mode': midiRepeatMode,
      if (midiCountIn != null) 'midi_count_in': midiCountIn,
      if (midiVerseByVerse != null) 'midi_verse_by_verse': midiVerseByVerse,
      if (autoScroll != null) 'auto_scroll': autoScroll,
      if (backgroundPlayback != null) 'background_playback': backgroundPlayback,
      if (defaultSearchMode != null) 'default_search_mode': defaultSearchMode,
      if (searchLanguageFilter != null)
        'search_language_filter': searchLanguageFilter,
      if (searchCollectionFilter != null)
        'search_collection_filter': searchCollectionFilter,
      if (savedFiltersJson != null) 'saved_filters_json': savedFiltersJson,
      if (activeCollectionIds != null)
        'active_collection_ids': activeCollectionIds,
      if (displayLanguage != null) 'display_language': displayLanguage,
      if (showIntroAnimation != null)
        'show_intro_animation': showIntroAnimation,
      if (reduceMotion != null) 'reduce_motion': reduceMotion,
      if (premiumStatus != null) 'premium_status': premiumStatus,
      if (premiumExpiry != null) 'premium_expiry': premiumExpiry,
      if (cloudSyncEnabled != null) 'cloud_sync_enabled': cloudSyncEnabled,
      if (analyticsEnabled != null) 'analytics_enabled': analyticsEnabled,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserSettingsCompanion copyWith(
      {Value<int>? id,
      Value<String>? theme,
      Value<String>? accentColor,
      Value<int>? fontSize,
      Value<String>? fontFamily,
      Value<String>? lineSpacing,
      Value<String>? readerMode,
      Value<bool>? showVerseLabels,
      Value<bool>? showTuneName,
      Value<bool>? showMeter,
      Value<bool>? showComposer,
      Value<bool>? showScriptureRef,
      Value<bool>? showChords,
      Value<bool>? highlightCurrentLine,
      Value<String>? midiInstrument,
      Value<double>? midiTempoMultiplier,
      Value<int>? midiTranspose,
      Value<String>? midiRepeatMode,
      Value<bool>? midiCountIn,
      Value<bool>? midiVerseByVerse,
      Value<bool>? autoScroll,
      Value<bool>? backgroundPlayback,
      Value<String>? defaultSearchMode,
      Value<String>? searchLanguageFilter,
      Value<String>? searchCollectionFilter,
      Value<String?>? savedFiltersJson,
      Value<String>? activeCollectionIds,
      Value<String>? displayLanguage,
      Value<bool>? showIntroAnimation,
      Value<bool>? reduceMotion,
      Value<String>? premiumStatus,
      Value<int?>? premiumExpiry,
      Value<bool>? cloudSyncEnabled,
      Value<bool>? analyticsEnabled,
      Value<int>? rowid}) {
    return UserSettingsCompanion(
      id: id ?? this.id,
      theme: theme ?? this.theme,
      accentColor: accentColor ?? this.accentColor,
      fontSize: fontSize ?? this.fontSize,
      fontFamily: fontFamily ?? this.fontFamily,
      lineSpacing: lineSpacing ?? this.lineSpacing,
      readerMode: readerMode ?? this.readerMode,
      showVerseLabels: showVerseLabels ?? this.showVerseLabels,
      showTuneName: showTuneName ?? this.showTuneName,
      showMeter: showMeter ?? this.showMeter,
      showComposer: showComposer ?? this.showComposer,
      showScriptureRef: showScriptureRef ?? this.showScriptureRef,
      showChords: showChords ?? this.showChords,
      highlightCurrentLine: highlightCurrentLine ?? this.highlightCurrentLine,
      midiInstrument: midiInstrument ?? this.midiInstrument,
      midiTempoMultiplier: midiTempoMultiplier ?? this.midiTempoMultiplier,
      midiTranspose: midiTranspose ?? this.midiTranspose,
      midiRepeatMode: midiRepeatMode ?? this.midiRepeatMode,
      midiCountIn: midiCountIn ?? this.midiCountIn,
      midiVerseByVerse: midiVerseByVerse ?? this.midiVerseByVerse,
      autoScroll: autoScroll ?? this.autoScroll,
      backgroundPlayback: backgroundPlayback ?? this.backgroundPlayback,
      defaultSearchMode: defaultSearchMode ?? this.defaultSearchMode,
      searchLanguageFilter: searchLanguageFilter ?? this.searchLanguageFilter,
      searchCollectionFilter:
          searchCollectionFilter ?? this.searchCollectionFilter,
      savedFiltersJson: savedFiltersJson ?? this.savedFiltersJson,
      activeCollectionIds: activeCollectionIds ?? this.activeCollectionIds,
      displayLanguage: displayLanguage ?? this.displayLanguage,
      showIntroAnimation: showIntroAnimation ?? this.showIntroAnimation,
      reduceMotion: reduceMotion ?? this.reduceMotion,
      premiumStatus: premiumStatus ?? this.premiumStatus,
      premiumExpiry: premiumExpiry ?? this.premiumExpiry,
      cloudSyncEnabled: cloudSyncEnabled ?? this.cloudSyncEnabled,
      analyticsEnabled: analyticsEnabled ?? this.analyticsEnabled,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (theme.present) {
      map['theme'] = Variable<String>(theme.value);
    }
    if (accentColor.present) {
      map['accent_color'] = Variable<String>(accentColor.value);
    }
    if (fontSize.present) {
      map['font_size'] = Variable<int>(fontSize.value);
    }
    if (fontFamily.present) {
      map['font_family'] = Variable<String>(fontFamily.value);
    }
    if (lineSpacing.present) {
      map['line_spacing'] = Variable<String>(lineSpacing.value);
    }
    if (readerMode.present) {
      map['reader_mode'] = Variable<String>(readerMode.value);
    }
    if (showVerseLabels.present) {
      map['show_verse_labels'] = Variable<bool>(showVerseLabels.value);
    }
    if (showTuneName.present) {
      map['show_tune_name'] = Variable<bool>(showTuneName.value);
    }
    if (showMeter.present) {
      map['show_meter'] = Variable<bool>(showMeter.value);
    }
    if (showComposer.present) {
      map['show_composer'] = Variable<bool>(showComposer.value);
    }
    if (showScriptureRef.present) {
      map['show_scripture_ref'] = Variable<bool>(showScriptureRef.value);
    }
    if (showChords.present) {
      map['show_chords'] = Variable<bool>(showChords.value);
    }
    if (highlightCurrentLine.present) {
      map['highlight_current_line'] =
          Variable<bool>(highlightCurrentLine.value);
    }
    if (midiInstrument.present) {
      map['midi_instrument'] = Variable<String>(midiInstrument.value);
    }
    if (midiTempoMultiplier.present) {
      map['midi_tempo_multiplier'] =
          Variable<double>(midiTempoMultiplier.value);
    }
    if (midiTranspose.present) {
      map['midi_transpose'] = Variable<int>(midiTranspose.value);
    }
    if (midiRepeatMode.present) {
      map['midi_repeat_mode'] = Variable<String>(midiRepeatMode.value);
    }
    if (midiCountIn.present) {
      map['midi_count_in'] = Variable<bool>(midiCountIn.value);
    }
    if (midiVerseByVerse.present) {
      map['midi_verse_by_verse'] = Variable<bool>(midiVerseByVerse.value);
    }
    if (autoScroll.present) {
      map['auto_scroll'] = Variable<bool>(autoScroll.value);
    }
    if (backgroundPlayback.present) {
      map['background_playback'] = Variable<bool>(backgroundPlayback.value);
    }
    if (defaultSearchMode.present) {
      map['default_search_mode'] = Variable<String>(defaultSearchMode.value);
    }
    if (searchLanguageFilter.present) {
      map['search_language_filter'] =
          Variable<String>(searchLanguageFilter.value);
    }
    if (searchCollectionFilter.present) {
      map['search_collection_filter'] =
          Variable<String>(searchCollectionFilter.value);
    }
    if (savedFiltersJson.present) {
      map['saved_filters_json'] = Variable<String>(savedFiltersJson.value);
    }
    if (activeCollectionIds.present) {
      map['active_collection_ids'] =
          Variable<String>(activeCollectionIds.value);
    }
    if (displayLanguage.present) {
      map['display_language'] = Variable<String>(displayLanguage.value);
    }
    if (showIntroAnimation.present) {
      map['show_intro_animation'] = Variable<bool>(showIntroAnimation.value);
    }
    if (reduceMotion.present) {
      map['reduce_motion'] = Variable<bool>(reduceMotion.value);
    }
    if (premiumStatus.present) {
      map['premium_status'] = Variable<String>(premiumStatus.value);
    }
    if (premiumExpiry.present) {
      map['premium_expiry'] = Variable<int>(premiumExpiry.value);
    }
    if (cloudSyncEnabled.present) {
      map['cloud_sync_enabled'] = Variable<bool>(cloudSyncEnabled.value);
    }
    if (analyticsEnabled.present) {
      map['analytics_enabled'] = Variable<bool>(analyticsEnabled.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserSettingsCompanion(')
          ..write('id: $id, ')
          ..write('theme: $theme, ')
          ..write('accentColor: $accentColor, ')
          ..write('fontSize: $fontSize, ')
          ..write('fontFamily: $fontFamily, ')
          ..write('lineSpacing: $lineSpacing, ')
          ..write('readerMode: $readerMode, ')
          ..write('showVerseLabels: $showVerseLabels, ')
          ..write('showTuneName: $showTuneName, ')
          ..write('showMeter: $showMeter, ')
          ..write('showComposer: $showComposer, ')
          ..write('showScriptureRef: $showScriptureRef, ')
          ..write('showChords: $showChords, ')
          ..write('highlightCurrentLine: $highlightCurrentLine, ')
          ..write('midiInstrument: $midiInstrument, ')
          ..write('midiTempoMultiplier: $midiTempoMultiplier, ')
          ..write('midiTranspose: $midiTranspose, ')
          ..write('midiRepeatMode: $midiRepeatMode, ')
          ..write('midiCountIn: $midiCountIn, ')
          ..write('midiVerseByVerse: $midiVerseByVerse, ')
          ..write('autoScroll: $autoScroll, ')
          ..write('backgroundPlayback: $backgroundPlayback, ')
          ..write('defaultSearchMode: $defaultSearchMode, ')
          ..write('searchLanguageFilter: $searchLanguageFilter, ')
          ..write('searchCollectionFilter: $searchCollectionFilter, ')
          ..write('savedFiltersJson: $savedFiltersJson, ')
          ..write('activeCollectionIds: $activeCollectionIds, ')
          ..write('displayLanguage: $displayLanguage, ')
          ..write('showIntroAnimation: $showIntroAnimation, ')
          ..write('reduceMotion: $reduceMotion, ')
          ..write('premiumStatus: $premiumStatus, ')
          ..write('premiumExpiry: $premiumExpiry, ')
          ..write('cloudSyncEnabled: $cloudSyncEnabled, ')
          ..write('analyticsEnabled: $analyticsEnabled, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HymnNotesTable extends HymnNotes
    with TableInfo<$HymnNotesTable, HymnNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HymnNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hymnIdMeta = const VerificationMeta('hymnId');
  @override
  late final GeneratedColumn<int> hymnId = GeneratedColumn<int>(
      'hymn_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES hymns (id)'));
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, hymnId, content, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hymn_notes';
  @override
  VerificationContext validateIntegrity(Insertable<HymnNote> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hymn_id')) {
      context.handle(_hymnIdMeta,
          hymnId.isAcceptableOrUnknown(data['hymn_id']!, _hymnIdMeta));
    } else if (isInserting) {
      context.missing(_hymnIdMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HymnNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HymnNote(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hymnId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hymn_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $HymnNotesTable createAlias(String alias) {
    return $HymnNotesTable(attachedDatabase, alias);
  }
}

class HymnNote extends DataClass implements Insertable<HymnNote> {
  final int id;
  final int hymnId;
  final String content;
  final int createdAt;
  final int updatedAt;
  const HymnNote(
      {required this.id,
      required this.hymnId,
      required this.content,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hymn_id'] = Variable<int>(hymnId);
    map['content'] = Variable<String>(content);
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  HymnNotesCompanion toCompanion(bool nullToAbsent) {
    return HymnNotesCompanion(
      id: Value(id),
      hymnId: Value(hymnId),
      content: Value(content),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory HymnNote.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HymnNote(
      id: serializer.fromJson<int>(json['id']),
      hymnId: serializer.fromJson<int>(json['hymnId']),
      content: serializer.fromJson<String>(json['content']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hymnId': serializer.toJson<int>(hymnId),
      'content': serializer.toJson<String>(content),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  HymnNote copyWith(
          {int? id,
          int? hymnId,
          String? content,
          int? createdAt,
          int? updatedAt}) =>
      HymnNote(
        id: id ?? this.id,
        hymnId: hymnId ?? this.hymnId,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('HymnNote(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('content: $content, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hymnId, content, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HymnNote &&
          other.id == this.id &&
          other.hymnId == this.hymnId &&
          other.content == this.content &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class HymnNotesCompanion extends UpdateCompanion<HymnNote> {
  final Value<int> id;
  final Value<int> hymnId;
  final Value<String> content;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  const HymnNotesCompanion({
    this.id = const Value.absent(),
    this.hymnId = const Value.absent(),
    this.content = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  HymnNotesCompanion.insert({
    this.id = const Value.absent(),
    required int hymnId,
    required String content,
    required int createdAt,
    required int updatedAt,
  })  : hymnId = Value(hymnId),
        content = Value(content),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<HymnNote> custom({
    Expression<int>? id,
    Expression<int>? hymnId,
    Expression<String>? content,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hymnId != null) 'hymn_id': hymnId,
      if (content != null) 'content': content,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  HymnNotesCompanion copyWith(
      {Value<int>? id,
      Value<int>? hymnId,
      Value<String>? content,
      Value<int>? createdAt,
      Value<int>? updatedAt}) {
    return HymnNotesCompanion(
      id: id ?? this.id,
      hymnId: hymnId ?? this.hymnId,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hymnId.present) {
      map['hymn_id'] = Variable<int>(hymnId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HymnNotesCompanion(')
          ..write('id: $id, ')
          ..write('hymnId: $hymnId, ')
          ..write('content: $content, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $CollectionsTable collections = $CollectionsTable(this);
  late final $PersonsTable persons = $PersonsTable(this);
  late final $SongEmbeddingsTable songEmbeddings = $SongEmbeddingsTable(this);
  late final $HymnsTable hymns = $HymnsTable(this);
  late final $HymnVersesTable hymnVerses = $HymnVersesTable(this);
  late final $HymnCrossReferencesTable hymnCrossReferences =
      $HymnCrossReferencesTable(this);
  late final $TopicsTable topics = $TopicsTable(this);
  late final $HymnTopicsTable hymnTopics = $HymnTopicsTable(this);
  late final $FavoriteFoldersTable favoriteFolders =
      $FavoriteFoldersTable(this);
  late final $UserFavoritesTable userFavorites = $UserFavoritesTable(this);
  late final $SearchHistoryTable searchHistory = $SearchHistoryTable(this);
  late final $WorshipProgramsTable worshipPrograms =
      $WorshipProgramsTable(this);
  late final $ProgramItemsTable programItems = $ProgramItemsTable(this);
  late final $UserSettingsTable userSettings = $UserSettingsTable(this);
  late final $HymnNotesTable hymnNotes = $HymnNotesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        collections,
        persons,
        songEmbeddings,
        hymns,
        hymnVerses,
        hymnCrossReferences,
        topics,
        hymnTopics,
        favoriteFolders,
        userFavorites,
        searchHistory,
        worshipPrograms,
        programItems,
        userSettings,
        hymnNotes
      ];
}

typedef $$CollectionsTableInsertCompanionBuilder = CollectionsCompanion
    Function({
  Value<int> id,
  required String code,
  required String name,
  Value<String?> nameNative,
  required String languageCode,
  required String languageNameEnglish,
  required String languageNameNative,
  Value<String> fontFamily,
  Value<String?> specialCharacters,
  required int tier,
  Value<int> totalSongs,
  Value<bool> isBundled,
  Value<bool> requiresPremium,
  Value<double?> downloadSizeMb,
  Value<bool> isDownloaded,
  Value<String?> sourceOrganization,
  Value<String> licenseType,
  Value<int?> licenseExpiry,
  Value<int> displayOrder,
});
typedef $$CollectionsTableUpdateCompanionBuilder = CollectionsCompanion
    Function({
  Value<int> id,
  Value<String> code,
  Value<String> name,
  Value<String?> nameNative,
  Value<String> languageCode,
  Value<String> languageNameEnglish,
  Value<String> languageNameNative,
  Value<String> fontFamily,
  Value<String?> specialCharacters,
  Value<int> tier,
  Value<int> totalSongs,
  Value<bool> isBundled,
  Value<bool> requiresPremium,
  Value<double?> downloadSizeMb,
  Value<bool> isDownloaded,
  Value<String?> sourceOrganization,
  Value<String> licenseType,
  Value<int?> licenseExpiry,
  Value<int> displayOrder,
});

class $$CollectionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CollectionsTable,
    Collection,
    $$CollectionsTableFilterComposer,
    $$CollectionsTableOrderingComposer,
    $$CollectionsTableProcessedTableManager,
    $$CollectionsTableInsertCompanionBuilder,
    $$CollectionsTableUpdateCompanionBuilder> {
  $$CollectionsTableTableManager(_$AppDatabase db, $CollectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CollectionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CollectionsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$CollectionsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> nameNative = const Value.absent(),
            Value<String> languageCode = const Value.absent(),
            Value<String> languageNameEnglish = const Value.absent(),
            Value<String> languageNameNative = const Value.absent(),
            Value<String> fontFamily = const Value.absent(),
            Value<String?> specialCharacters = const Value.absent(),
            Value<int> tier = const Value.absent(),
            Value<int> totalSongs = const Value.absent(),
            Value<bool> isBundled = const Value.absent(),
            Value<bool> requiresPremium = const Value.absent(),
            Value<double?> downloadSizeMb = const Value.absent(),
            Value<bool> isDownloaded = const Value.absent(),
            Value<String?> sourceOrganization = const Value.absent(),
            Value<String> licenseType = const Value.absent(),
            Value<int?> licenseExpiry = const Value.absent(),
            Value<int> displayOrder = const Value.absent(),
          }) =>
              CollectionsCompanion(
            id: id,
            code: code,
            name: name,
            nameNative: nameNative,
            languageCode: languageCode,
            languageNameEnglish: languageNameEnglish,
            languageNameNative: languageNameNative,
            fontFamily: fontFamily,
            specialCharacters: specialCharacters,
            tier: tier,
            totalSongs: totalSongs,
            isBundled: isBundled,
            requiresPremium: requiresPremium,
            downloadSizeMb: downloadSizeMb,
            isDownloaded: isDownloaded,
            sourceOrganization: sourceOrganization,
            licenseType: licenseType,
            licenseExpiry: licenseExpiry,
            displayOrder: displayOrder,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String code,
            required String name,
            Value<String?> nameNative = const Value.absent(),
            required String languageCode,
            required String languageNameEnglish,
            required String languageNameNative,
            Value<String> fontFamily = const Value.absent(),
            Value<String?> specialCharacters = const Value.absent(),
            required int tier,
            Value<int> totalSongs = const Value.absent(),
            Value<bool> isBundled = const Value.absent(),
            Value<bool> requiresPremium = const Value.absent(),
            Value<double?> downloadSizeMb = const Value.absent(),
            Value<bool> isDownloaded = const Value.absent(),
            Value<String?> sourceOrganization = const Value.absent(),
            Value<String> licenseType = const Value.absent(),
            Value<int?> licenseExpiry = const Value.absent(),
            Value<int> displayOrder = const Value.absent(),
          }) =>
              CollectionsCompanion.insert(
            id: id,
            code: code,
            name: name,
            nameNative: nameNative,
            languageCode: languageCode,
            languageNameEnglish: languageNameEnglish,
            languageNameNative: languageNameNative,
            fontFamily: fontFamily,
            specialCharacters: specialCharacters,
            tier: tier,
            totalSongs: totalSongs,
            isBundled: isBundled,
            requiresPremium: requiresPremium,
            downloadSizeMb: downloadSizeMb,
            isDownloaded: isDownloaded,
            sourceOrganization: sourceOrganization,
            licenseType: licenseType,
            licenseExpiry: licenseExpiry,
            displayOrder: displayOrder,
          ),
        ));
}

class $$CollectionsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $CollectionsTable,
    Collection,
    $$CollectionsTableFilterComposer,
    $$CollectionsTableOrderingComposer,
    $$CollectionsTableProcessedTableManager,
    $$CollectionsTableInsertCompanionBuilder,
    $$CollectionsTableUpdateCompanionBuilder> {
  $$CollectionsTableProcessedTableManager(super.$state);
}

class $$CollectionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameNative => $state.composableBuilder(
      column: $state.table.nameNative,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get languageCode => $state.composableBuilder(
      column: $state.table.languageCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get languageNameEnglish => $state.composableBuilder(
      column: $state.table.languageNameEnglish,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get languageNameNative => $state.composableBuilder(
      column: $state.table.languageNameNative,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fontFamily => $state.composableBuilder(
      column: $state.table.fontFamily,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get specialCharacters => $state.composableBuilder(
      column: $state.table.specialCharacters,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get tier => $state.composableBuilder(
      column: $state.table.tier,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get totalSongs => $state.composableBuilder(
      column: $state.table.totalSongs,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isBundled => $state.composableBuilder(
      column: $state.table.isBundled,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get requiresPremium => $state.composableBuilder(
      column: $state.table.requiresPremium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get downloadSizeMb => $state.composableBuilder(
      column: $state.table.downloadSizeMb,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isDownloaded => $state.composableBuilder(
      column: $state.table.isDownloaded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sourceOrganization => $state.composableBuilder(
      column: $state.table.sourceOrganization,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get licenseType => $state.composableBuilder(
      column: $state.table.licenseType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get licenseExpiry => $state.composableBuilder(
      column: $state.table.licenseExpiry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter hymnsRefs(
      ComposableFilter Function($$HymnsTableFilterComposer f) f) {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.collectionId,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$CollectionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CollectionsTable> {
  $$CollectionsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameNative => $state.composableBuilder(
      column: $state.table.nameNative,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get languageCode => $state.composableBuilder(
      column: $state.table.languageCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get languageNameEnglish => $state.composableBuilder(
      column: $state.table.languageNameEnglish,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get languageNameNative => $state.composableBuilder(
      column: $state.table.languageNameNative,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fontFamily => $state.composableBuilder(
      column: $state.table.fontFamily,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get specialCharacters => $state.composableBuilder(
      column: $state.table.specialCharacters,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get tier => $state.composableBuilder(
      column: $state.table.tier,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get totalSongs => $state.composableBuilder(
      column: $state.table.totalSongs,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isBundled => $state.composableBuilder(
      column: $state.table.isBundled,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get requiresPremium => $state.composableBuilder(
      column: $state.table.requiresPremium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get downloadSizeMb => $state.composableBuilder(
      column: $state.table.downloadSizeMb,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isDownloaded => $state.composableBuilder(
      column: $state.table.isDownloaded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sourceOrganization => $state.composableBuilder(
      column: $state.table.sourceOrganization,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get licenseType => $state.composableBuilder(
      column: $state.table.licenseType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get licenseExpiry => $state.composableBuilder(
      column: $state.table.licenseExpiry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$PersonsTableInsertCompanionBuilder = PersonsCompanion Function({
  Value<int> id,
  required String fullName,
  required String fullNameNormalized,
  Value<int?> birthYear,
  Value<int?> deathYear,
  Value<String?> nationality,
  Value<String?> biographyShort,
  Value<bool> isSda,
});
typedef $$PersonsTableUpdateCompanionBuilder = PersonsCompanion Function({
  Value<int> id,
  Value<String> fullName,
  Value<String> fullNameNormalized,
  Value<int?> birthYear,
  Value<int?> deathYear,
  Value<String?> nationality,
  Value<String?> biographyShort,
  Value<bool> isSda,
});

class $$PersonsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PersonsTable,
    Person,
    $$PersonsTableFilterComposer,
    $$PersonsTableOrderingComposer,
    $$PersonsTableProcessedTableManager,
    $$PersonsTableInsertCompanionBuilder,
    $$PersonsTableUpdateCompanionBuilder> {
  $$PersonsTableTableManager(_$AppDatabase db, $PersonsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PersonsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PersonsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) => $$PersonsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> fullName = const Value.absent(),
            Value<String> fullNameNormalized = const Value.absent(),
            Value<int?> birthYear = const Value.absent(),
            Value<int?> deathYear = const Value.absent(),
            Value<String?> nationality = const Value.absent(),
            Value<String?> biographyShort = const Value.absent(),
            Value<bool> isSda = const Value.absent(),
          }) =>
              PersonsCompanion(
            id: id,
            fullName: fullName,
            fullNameNormalized: fullNameNormalized,
            birthYear: birthYear,
            deathYear: deathYear,
            nationality: nationality,
            biographyShort: biographyShort,
            isSda: isSda,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String fullName,
            required String fullNameNormalized,
            Value<int?> birthYear = const Value.absent(),
            Value<int?> deathYear = const Value.absent(),
            Value<String?> nationality = const Value.absent(),
            Value<String?> biographyShort = const Value.absent(),
            Value<bool> isSda = const Value.absent(),
          }) =>
              PersonsCompanion.insert(
            id: id,
            fullName: fullName,
            fullNameNormalized: fullNameNormalized,
            birthYear: birthYear,
            deathYear: deathYear,
            nationality: nationality,
            biographyShort: biographyShort,
            isSda: isSda,
          ),
        ));
}

class $$PersonsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $PersonsTable,
    Person,
    $$PersonsTableFilterComposer,
    $$PersonsTableOrderingComposer,
    $$PersonsTableProcessedTableManager,
    $$PersonsTableInsertCompanionBuilder,
    $$PersonsTableUpdateCompanionBuilder> {
  $$PersonsTableProcessedTableManager(super.$state);
}

class $$PersonsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PersonsTable> {
  $$PersonsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fullName => $state.composableBuilder(
      column: $state.table.fullName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fullNameNormalized => $state.composableBuilder(
      column: $state.table.fullNameNormalized,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get birthYear => $state.composableBuilder(
      column: $state.table.birthYear,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get deathYear => $state.composableBuilder(
      column: $state.table.deathYear,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nationality => $state.composableBuilder(
      column: $state.table.nationality,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get biographyShort => $state.composableBuilder(
      column: $state.table.biographyShort,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isSda => $state.composableBuilder(
      column: $state.table.isSda,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PersonsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PersonsTable> {
  $$PersonsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fullName => $state.composableBuilder(
      column: $state.table.fullName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fullNameNormalized => $state.composableBuilder(
      column: $state.table.fullNameNormalized,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get birthYear => $state.composableBuilder(
      column: $state.table.birthYear,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get deathYear => $state.composableBuilder(
      column: $state.table.deathYear,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nationality => $state.composableBuilder(
      column: $state.table.nationality,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get biographyShort => $state.composableBuilder(
      column: $state.table.biographyShort,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isSda => $state.composableBuilder(
      column: $state.table.isSda,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SongEmbeddingsTableInsertCompanionBuilder = SongEmbeddingsCompanion
    Function({
  Value<int> id,
  required int hymnId,
  required Uint8List embedding,
  required String modelVersion,
  required int generatedAt,
});
typedef $$SongEmbeddingsTableUpdateCompanionBuilder = SongEmbeddingsCompanion
    Function({
  Value<int> id,
  Value<int> hymnId,
  Value<Uint8List> embedding,
  Value<String> modelVersion,
  Value<int> generatedAt,
});

class $$SongEmbeddingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SongEmbeddingsTable,
    SongEmbedding,
    $$SongEmbeddingsTableFilterComposer,
    $$SongEmbeddingsTableOrderingComposer,
    $$SongEmbeddingsTableProcessedTableManager,
    $$SongEmbeddingsTableInsertCompanionBuilder,
    $$SongEmbeddingsTableUpdateCompanionBuilder> {
  $$SongEmbeddingsTableTableManager(
      _$AppDatabase db, $SongEmbeddingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SongEmbeddingsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SongEmbeddingsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SongEmbeddingsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> hymnId = const Value.absent(),
            Value<Uint8List> embedding = const Value.absent(),
            Value<String> modelVersion = const Value.absent(),
            Value<int> generatedAt = const Value.absent(),
          }) =>
              SongEmbeddingsCompanion(
            id: id,
            hymnId: hymnId,
            embedding: embedding,
            modelVersion: modelVersion,
            generatedAt: generatedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int hymnId,
            required Uint8List embedding,
            required String modelVersion,
            required int generatedAt,
          }) =>
              SongEmbeddingsCompanion.insert(
            id: id,
            hymnId: hymnId,
            embedding: embedding,
            modelVersion: modelVersion,
            generatedAt: generatedAt,
          ),
        ));
}

class $$SongEmbeddingsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $SongEmbeddingsTable,
    SongEmbedding,
    $$SongEmbeddingsTableFilterComposer,
    $$SongEmbeddingsTableOrderingComposer,
    $$SongEmbeddingsTableProcessedTableManager,
    $$SongEmbeddingsTableInsertCompanionBuilder,
    $$SongEmbeddingsTableUpdateCompanionBuilder> {
  $$SongEmbeddingsTableProcessedTableManager(super.$state);
}

class $$SongEmbeddingsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SongEmbeddingsTable> {
  $$SongEmbeddingsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get hymnId => $state.composableBuilder(
      column: $state.table.hymnId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get embedding => $state.composableBuilder(
      column: $state.table.embedding,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get modelVersion => $state.composableBuilder(
      column: $state.table.modelVersion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get generatedAt => $state.composableBuilder(
      column: $state.table.generatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter hymnsRefs(
      ComposableFilter Function($$HymnsTableFilterComposer f) f) {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.embeddingId,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$SongEmbeddingsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SongEmbeddingsTable> {
  $$SongEmbeddingsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get hymnId => $state.composableBuilder(
      column: $state.table.hymnId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get embedding => $state.composableBuilder(
      column: $state.table.embedding,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get modelVersion => $state.composableBuilder(
      column: $state.table.modelVersion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get generatedAt => $state.composableBuilder(
      column: $state.table.generatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$HymnsTableInsertCompanionBuilder = HymnsCompanion Function({
  Value<int> id,
  required int collectionId,
  Value<int?> hymnNumber,
  required String title,
  required String titleNormalized,
  Value<String?> firstLine,
  Value<String?> firstLineNormalized,
  Value<String?> tuneName,
  Value<String?> meter,
  Value<String?> timeSignature,
  Value<String?> keySignature,
  Value<int?> bpmDefault,
  Value<int?> composerId,
  Value<int?> lyricistId,
  Value<int?> yearComposed,
  Value<int?> yearPublishedSda,
  Value<String?> scriptureRefs,
  Value<String> occasions,
  Value<String?> emotionalTones,
  Value<String> tempoCategory,
  Value<String?> tempoMarking,
  Value<String> difficulty,
  Value<String> voicing,
  Value<String> copyrightStatus,
  Value<String?> copyrightOwner,
  Value<String?> midiAssetPath,
  Value<bool> hasMidi,
  Value<bool> hasChords,
  Value<String?> chordData,
  Value<bool> isRedLetterSpecial,
  Value<String?> dialect,
  Value<String?> sourceAttribution,
  Value<bool> isCommunityContributed,
  Value<int?> contributorId,
  Value<int?> embeddingId,
  required int createdAt,
  required int updatedAt,
  Value<int> useCount,
  Value<int?> lastUsed,
});
typedef $$HymnsTableUpdateCompanionBuilder = HymnsCompanion Function({
  Value<int> id,
  Value<int> collectionId,
  Value<int?> hymnNumber,
  Value<String> title,
  Value<String> titleNormalized,
  Value<String?> firstLine,
  Value<String?> firstLineNormalized,
  Value<String?> tuneName,
  Value<String?> meter,
  Value<String?> timeSignature,
  Value<String?> keySignature,
  Value<int?> bpmDefault,
  Value<int?> composerId,
  Value<int?> lyricistId,
  Value<int?> yearComposed,
  Value<int?> yearPublishedSda,
  Value<String?> scriptureRefs,
  Value<String> occasions,
  Value<String?> emotionalTones,
  Value<String> tempoCategory,
  Value<String?> tempoMarking,
  Value<String> difficulty,
  Value<String> voicing,
  Value<String> copyrightStatus,
  Value<String?> copyrightOwner,
  Value<String?> midiAssetPath,
  Value<bool> hasMidi,
  Value<bool> hasChords,
  Value<String?> chordData,
  Value<bool> isRedLetterSpecial,
  Value<String?> dialect,
  Value<String?> sourceAttribution,
  Value<bool> isCommunityContributed,
  Value<int?> contributorId,
  Value<int?> embeddingId,
  Value<int> createdAt,
  Value<int> updatedAt,
  Value<int> useCount,
  Value<int?> lastUsed,
});

class $$HymnsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HymnsTable,
    Hymn,
    $$HymnsTableFilterComposer,
    $$HymnsTableOrderingComposer,
    $$HymnsTableProcessedTableManager,
    $$HymnsTableInsertCompanionBuilder,
    $$HymnsTableUpdateCompanionBuilder> {
  $$HymnsTableTableManager(_$AppDatabase db, $HymnsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$HymnsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$HymnsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) => $$HymnsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> collectionId = const Value.absent(),
            Value<int?> hymnNumber = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> titleNormalized = const Value.absent(),
            Value<String?> firstLine = const Value.absent(),
            Value<String?> firstLineNormalized = const Value.absent(),
            Value<String?> tuneName = const Value.absent(),
            Value<String?> meter = const Value.absent(),
            Value<String?> timeSignature = const Value.absent(),
            Value<String?> keySignature = const Value.absent(),
            Value<int?> bpmDefault = const Value.absent(),
            Value<int?> composerId = const Value.absent(),
            Value<int?> lyricistId = const Value.absent(),
            Value<int?> yearComposed = const Value.absent(),
            Value<int?> yearPublishedSda = const Value.absent(),
            Value<String?> scriptureRefs = const Value.absent(),
            Value<String> occasions = const Value.absent(),
            Value<String?> emotionalTones = const Value.absent(),
            Value<String> tempoCategory = const Value.absent(),
            Value<String?> tempoMarking = const Value.absent(),
            Value<String> difficulty = const Value.absent(),
            Value<String> voicing = const Value.absent(),
            Value<String> copyrightStatus = const Value.absent(),
            Value<String?> copyrightOwner = const Value.absent(),
            Value<String?> midiAssetPath = const Value.absent(),
            Value<bool> hasMidi = const Value.absent(),
            Value<bool> hasChords = const Value.absent(),
            Value<String?> chordData = const Value.absent(),
            Value<bool> isRedLetterSpecial = const Value.absent(),
            Value<String?> dialect = const Value.absent(),
            Value<String?> sourceAttribution = const Value.absent(),
            Value<bool> isCommunityContributed = const Value.absent(),
            Value<int?> contributorId = const Value.absent(),
            Value<int?> embeddingId = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
            Value<int> useCount = const Value.absent(),
            Value<int?> lastUsed = const Value.absent(),
          }) =>
              HymnsCompanion(
            id: id,
            collectionId: collectionId,
            hymnNumber: hymnNumber,
            title: title,
            titleNormalized: titleNormalized,
            firstLine: firstLine,
            firstLineNormalized: firstLineNormalized,
            tuneName: tuneName,
            meter: meter,
            timeSignature: timeSignature,
            keySignature: keySignature,
            bpmDefault: bpmDefault,
            composerId: composerId,
            lyricistId: lyricistId,
            yearComposed: yearComposed,
            yearPublishedSda: yearPublishedSda,
            scriptureRefs: scriptureRefs,
            occasions: occasions,
            emotionalTones: emotionalTones,
            tempoCategory: tempoCategory,
            tempoMarking: tempoMarking,
            difficulty: difficulty,
            voicing: voicing,
            copyrightStatus: copyrightStatus,
            copyrightOwner: copyrightOwner,
            midiAssetPath: midiAssetPath,
            hasMidi: hasMidi,
            hasChords: hasChords,
            chordData: chordData,
            isRedLetterSpecial: isRedLetterSpecial,
            dialect: dialect,
            sourceAttribution: sourceAttribution,
            isCommunityContributed: isCommunityContributed,
            contributorId: contributorId,
            embeddingId: embeddingId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            useCount: useCount,
            lastUsed: lastUsed,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int collectionId,
            Value<int?> hymnNumber = const Value.absent(),
            required String title,
            required String titleNormalized,
            Value<String?> firstLine = const Value.absent(),
            Value<String?> firstLineNormalized = const Value.absent(),
            Value<String?> tuneName = const Value.absent(),
            Value<String?> meter = const Value.absent(),
            Value<String?> timeSignature = const Value.absent(),
            Value<String?> keySignature = const Value.absent(),
            Value<int?> bpmDefault = const Value.absent(),
            Value<int?> composerId = const Value.absent(),
            Value<int?> lyricistId = const Value.absent(),
            Value<int?> yearComposed = const Value.absent(),
            Value<int?> yearPublishedSda = const Value.absent(),
            Value<String?> scriptureRefs = const Value.absent(),
            Value<String> occasions = const Value.absent(),
            Value<String?> emotionalTones = const Value.absent(),
            Value<String> tempoCategory = const Value.absent(),
            Value<String?> tempoMarking = const Value.absent(),
            Value<String> difficulty = const Value.absent(),
            Value<String> voicing = const Value.absent(),
            Value<String> copyrightStatus = const Value.absent(),
            Value<String?> copyrightOwner = const Value.absent(),
            Value<String?> midiAssetPath = const Value.absent(),
            Value<bool> hasMidi = const Value.absent(),
            Value<bool> hasChords = const Value.absent(),
            Value<String?> chordData = const Value.absent(),
            Value<bool> isRedLetterSpecial = const Value.absent(),
            Value<String?> dialect = const Value.absent(),
            Value<String?> sourceAttribution = const Value.absent(),
            Value<bool> isCommunityContributed = const Value.absent(),
            Value<int?> contributorId = const Value.absent(),
            Value<int?> embeddingId = const Value.absent(),
            required int createdAt,
            required int updatedAt,
            Value<int> useCount = const Value.absent(),
            Value<int?> lastUsed = const Value.absent(),
          }) =>
              HymnsCompanion.insert(
            id: id,
            collectionId: collectionId,
            hymnNumber: hymnNumber,
            title: title,
            titleNormalized: titleNormalized,
            firstLine: firstLine,
            firstLineNormalized: firstLineNormalized,
            tuneName: tuneName,
            meter: meter,
            timeSignature: timeSignature,
            keySignature: keySignature,
            bpmDefault: bpmDefault,
            composerId: composerId,
            lyricistId: lyricistId,
            yearComposed: yearComposed,
            yearPublishedSda: yearPublishedSda,
            scriptureRefs: scriptureRefs,
            occasions: occasions,
            emotionalTones: emotionalTones,
            tempoCategory: tempoCategory,
            tempoMarking: tempoMarking,
            difficulty: difficulty,
            voicing: voicing,
            copyrightStatus: copyrightStatus,
            copyrightOwner: copyrightOwner,
            midiAssetPath: midiAssetPath,
            hasMidi: hasMidi,
            hasChords: hasChords,
            chordData: chordData,
            isRedLetterSpecial: isRedLetterSpecial,
            dialect: dialect,
            sourceAttribution: sourceAttribution,
            isCommunityContributed: isCommunityContributed,
            contributorId: contributorId,
            embeddingId: embeddingId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            useCount: useCount,
            lastUsed: lastUsed,
          ),
        ));
}

class $$HymnsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $HymnsTable,
    Hymn,
    $$HymnsTableFilterComposer,
    $$HymnsTableOrderingComposer,
    $$HymnsTableProcessedTableManager,
    $$HymnsTableInsertCompanionBuilder,
    $$HymnsTableUpdateCompanionBuilder> {
  $$HymnsTableProcessedTableManager(super.$state);
}

class $$HymnsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HymnsTable> {
  $$HymnsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get hymnNumber => $state.composableBuilder(
      column: $state.table.hymnNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get titleNormalized => $state.composableBuilder(
      column: $state.table.titleNormalized,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get firstLine => $state.composableBuilder(
      column: $state.table.firstLine,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get firstLineNormalized => $state.composableBuilder(
      column: $state.table.firstLineNormalized,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tuneName => $state.composableBuilder(
      column: $state.table.tuneName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get meter => $state.composableBuilder(
      column: $state.table.meter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get timeSignature => $state.composableBuilder(
      column: $state.table.timeSignature,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get keySignature => $state.composableBuilder(
      column: $state.table.keySignature,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get bpmDefault => $state.composableBuilder(
      column: $state.table.bpmDefault,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get yearComposed => $state.composableBuilder(
      column: $state.table.yearComposed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get yearPublishedSda => $state.composableBuilder(
      column: $state.table.yearPublishedSda,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get scriptureRefs => $state.composableBuilder(
      column: $state.table.scriptureRefs,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get occasions => $state.composableBuilder(
      column: $state.table.occasions,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get emotionalTones => $state.composableBuilder(
      column: $state.table.emotionalTones,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tempoCategory => $state.composableBuilder(
      column: $state.table.tempoCategory,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tempoMarking => $state.composableBuilder(
      column: $state.table.tempoMarking,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get difficulty => $state.composableBuilder(
      column: $state.table.difficulty,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get voicing => $state.composableBuilder(
      column: $state.table.voicing,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get copyrightStatus => $state.composableBuilder(
      column: $state.table.copyrightStatus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get copyrightOwner => $state.composableBuilder(
      column: $state.table.copyrightOwner,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get midiAssetPath => $state.composableBuilder(
      column: $state.table.midiAssetPath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get hasMidi => $state.composableBuilder(
      column: $state.table.hasMidi,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get hasChords => $state.composableBuilder(
      column: $state.table.hasChords,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get chordData => $state.composableBuilder(
      column: $state.table.chordData,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRedLetterSpecial => $state.composableBuilder(
      column: $state.table.isRedLetterSpecial,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get dialect => $state.composableBuilder(
      column: $state.table.dialect,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sourceAttribution => $state.composableBuilder(
      column: $state.table.sourceAttribution,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isCommunityContributed => $state.composableBuilder(
      column: $state.table.isCommunityContributed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get contributorId => $state.composableBuilder(
      column: $state.table.contributorId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get useCount => $state.composableBuilder(
      column: $state.table.useCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get lastUsed => $state.composableBuilder(
      column: $state.table.lastUsed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CollectionsTableFilterComposer get collectionId {
    final $$CollectionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.collectionId,
        referencedTable: $state.db.collections,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CollectionsTableFilterComposer(ComposerState($state.db,
                $state.db.collections, joinBuilder, parentComposers)));
    return composer;
  }

  $$PersonsTableFilterComposer get composerId {
    final $$PersonsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.composerId,
        referencedTable: $state.db.persons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PersonsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.persons, joinBuilder, parentComposers)));
    return composer;
  }

  $$PersonsTableFilterComposer get lyricistId {
    final $$PersonsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.lyricistId,
        referencedTable: $state.db.persons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PersonsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.persons, joinBuilder, parentComposers)));
    return composer;
  }

  $$SongEmbeddingsTableFilterComposer get embeddingId {
    final $$SongEmbeddingsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.embeddingId,
        referencedTable: $state.db.songEmbeddings,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SongEmbeddingsTableFilterComposer(ComposerState($state.db,
                $state.db.songEmbeddings, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter hymnVersesRefs(
      ComposableFilter Function($$HymnVersesTableFilterComposer f) f) {
    final $$HymnVersesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.hymnVerses,
        getReferencedColumn: (t) => t.hymnId,
        builder: (joinBuilder, parentComposers) =>
            $$HymnVersesTableFilterComposer(ComposerState($state.db,
                $state.db.hymnVerses, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter hymnTopicsRefs(
      ComposableFilter Function($$HymnTopicsTableFilterComposer f) f) {
    final $$HymnTopicsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.hymnTopics,
        getReferencedColumn: (t) => t.hymnId,
        builder: (joinBuilder, parentComposers) =>
            $$HymnTopicsTableFilterComposer(ComposerState($state.db,
                $state.db.hymnTopics, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter userFavoritesRefs(
      ComposableFilter Function($$UserFavoritesTableFilterComposer f) f) {
    final $$UserFavoritesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.userFavorites,
        getReferencedColumn: (t) => t.hymnId,
        builder: (joinBuilder, parentComposers) =>
            $$UserFavoritesTableFilterComposer(ComposerState($state.db,
                $state.db.userFavorites, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter programItemsRefs(
      ComposableFilter Function($$ProgramItemsTableFilterComposer f) f) {
    final $$ProgramItemsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.programItems,
        getReferencedColumn: (t) => t.hymnId,
        builder: (joinBuilder, parentComposers) =>
            $$ProgramItemsTableFilterComposer(ComposerState($state.db,
                $state.db.programItems, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter hymnNotesRefs(
      ComposableFilter Function($$HymnNotesTableFilterComposer f) f) {
    final $$HymnNotesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.hymnNotes,
        getReferencedColumn: (t) => t.hymnId,
        builder: (joinBuilder, parentComposers) =>
            $$HymnNotesTableFilterComposer(ComposerState(
                $state.db, $state.db.hymnNotes, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$HymnsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HymnsTable> {
  $$HymnsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get hymnNumber => $state.composableBuilder(
      column: $state.table.hymnNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get titleNormalized => $state.composableBuilder(
      column: $state.table.titleNormalized,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get firstLine => $state.composableBuilder(
      column: $state.table.firstLine,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get firstLineNormalized => $state.composableBuilder(
      column: $state.table.firstLineNormalized,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tuneName => $state.composableBuilder(
      column: $state.table.tuneName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get meter => $state.composableBuilder(
      column: $state.table.meter,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get timeSignature => $state.composableBuilder(
      column: $state.table.timeSignature,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get keySignature => $state.composableBuilder(
      column: $state.table.keySignature,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get bpmDefault => $state.composableBuilder(
      column: $state.table.bpmDefault,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get yearComposed => $state.composableBuilder(
      column: $state.table.yearComposed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get yearPublishedSda => $state.composableBuilder(
      column: $state.table.yearPublishedSda,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get scriptureRefs => $state.composableBuilder(
      column: $state.table.scriptureRefs,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get occasions => $state.composableBuilder(
      column: $state.table.occasions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get emotionalTones => $state.composableBuilder(
      column: $state.table.emotionalTones,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tempoCategory => $state.composableBuilder(
      column: $state.table.tempoCategory,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tempoMarking => $state.composableBuilder(
      column: $state.table.tempoMarking,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get difficulty => $state.composableBuilder(
      column: $state.table.difficulty,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get voicing => $state.composableBuilder(
      column: $state.table.voicing,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get copyrightStatus => $state.composableBuilder(
      column: $state.table.copyrightStatus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get copyrightOwner => $state.composableBuilder(
      column: $state.table.copyrightOwner,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get midiAssetPath => $state.composableBuilder(
      column: $state.table.midiAssetPath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get hasMidi => $state.composableBuilder(
      column: $state.table.hasMidi,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get hasChords => $state.composableBuilder(
      column: $state.table.hasChords,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get chordData => $state.composableBuilder(
      column: $state.table.chordData,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRedLetterSpecial => $state.composableBuilder(
      column: $state.table.isRedLetterSpecial,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get dialect => $state.composableBuilder(
      column: $state.table.dialect,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sourceAttribution => $state.composableBuilder(
      column: $state.table.sourceAttribution,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isCommunityContributed => $state.composableBuilder(
      column: $state.table.isCommunityContributed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get contributorId => $state.composableBuilder(
      column: $state.table.contributorId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get useCount => $state.composableBuilder(
      column: $state.table.useCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get lastUsed => $state.composableBuilder(
      column: $state.table.lastUsed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CollectionsTableOrderingComposer get collectionId {
    final $$CollectionsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.collectionId,
        referencedTable: $state.db.collections,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CollectionsTableOrderingComposer(ComposerState($state.db,
                $state.db.collections, joinBuilder, parentComposers)));
    return composer;
  }

  $$PersonsTableOrderingComposer get composerId {
    final $$PersonsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.composerId,
        referencedTable: $state.db.persons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PersonsTableOrderingComposer(ComposerState(
                $state.db, $state.db.persons, joinBuilder, parentComposers)));
    return composer;
  }

  $$PersonsTableOrderingComposer get lyricistId {
    final $$PersonsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.lyricistId,
        referencedTable: $state.db.persons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PersonsTableOrderingComposer(ComposerState(
                $state.db, $state.db.persons, joinBuilder, parentComposers)));
    return composer;
  }

  $$SongEmbeddingsTableOrderingComposer get embeddingId {
    final $$SongEmbeddingsTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.embeddingId,
            referencedTable: $state.db.songEmbeddings,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$SongEmbeddingsTableOrderingComposer(ComposerState($state.db,
                    $state.db.songEmbeddings, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$HymnVersesTableInsertCompanionBuilder = HymnVersesCompanion Function({
  Value<int> id,
  Value<int?> hymnId,
  required String verseType,
  Value<int?> verseNumber,
  required String lyrics,
  required String lyricsNormalized,
  Value<int?> wordCount,
  required int displayOrder,
  Value<int?> midiStartMs,
  Value<int?> midiEndMs,
});
typedef $$HymnVersesTableUpdateCompanionBuilder = HymnVersesCompanion Function({
  Value<int> id,
  Value<int?> hymnId,
  Value<String> verseType,
  Value<int?> verseNumber,
  Value<String> lyrics,
  Value<String> lyricsNormalized,
  Value<int?> wordCount,
  Value<int> displayOrder,
  Value<int?> midiStartMs,
  Value<int?> midiEndMs,
});

class $$HymnVersesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HymnVersesTable,
    HymnVerse,
    $$HymnVersesTableFilterComposer,
    $$HymnVersesTableOrderingComposer,
    $$HymnVersesTableProcessedTableManager,
    $$HymnVersesTableInsertCompanionBuilder,
    $$HymnVersesTableUpdateCompanionBuilder> {
  $$HymnVersesTableTableManager(_$AppDatabase db, $HymnVersesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$HymnVersesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$HymnVersesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$HymnVersesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int?> hymnId = const Value.absent(),
            Value<String> verseType = const Value.absent(),
            Value<int?> verseNumber = const Value.absent(),
            Value<String> lyrics = const Value.absent(),
            Value<String> lyricsNormalized = const Value.absent(),
            Value<int?> wordCount = const Value.absent(),
            Value<int> displayOrder = const Value.absent(),
            Value<int?> midiStartMs = const Value.absent(),
            Value<int?> midiEndMs = const Value.absent(),
          }) =>
              HymnVersesCompanion(
            id: id,
            hymnId: hymnId,
            verseType: verseType,
            verseNumber: verseNumber,
            lyrics: lyrics,
            lyricsNormalized: lyricsNormalized,
            wordCount: wordCount,
            displayOrder: displayOrder,
            midiStartMs: midiStartMs,
            midiEndMs: midiEndMs,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int?> hymnId = const Value.absent(),
            required String verseType,
            Value<int?> verseNumber = const Value.absent(),
            required String lyrics,
            required String lyricsNormalized,
            Value<int?> wordCount = const Value.absent(),
            required int displayOrder,
            Value<int?> midiStartMs = const Value.absent(),
            Value<int?> midiEndMs = const Value.absent(),
          }) =>
              HymnVersesCompanion.insert(
            id: id,
            hymnId: hymnId,
            verseType: verseType,
            verseNumber: verseNumber,
            lyrics: lyrics,
            lyricsNormalized: lyricsNormalized,
            wordCount: wordCount,
            displayOrder: displayOrder,
            midiStartMs: midiStartMs,
            midiEndMs: midiEndMs,
          ),
        ));
}

class $$HymnVersesTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $HymnVersesTable,
    HymnVerse,
    $$HymnVersesTableFilterComposer,
    $$HymnVersesTableOrderingComposer,
    $$HymnVersesTableProcessedTableManager,
    $$HymnVersesTableInsertCompanionBuilder,
    $$HymnVersesTableUpdateCompanionBuilder> {
  $$HymnVersesTableProcessedTableManager(super.$state);
}

class $$HymnVersesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HymnVersesTable> {
  $$HymnVersesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get verseType => $state.composableBuilder(
      column: $state.table.verseType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get verseNumber => $state.composableBuilder(
      column: $state.table.verseNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lyrics => $state.composableBuilder(
      column: $state.table.lyrics,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lyricsNormalized => $state.composableBuilder(
      column: $state.table.lyricsNormalized,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get wordCount => $state.composableBuilder(
      column: $state.table.wordCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get midiStartMs => $state.composableBuilder(
      column: $state.table.midiStartMs,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get midiEndMs => $state.composableBuilder(
      column: $state.table.midiEndMs,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$HymnsTableFilterComposer get hymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$HymnVersesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HymnVersesTable> {
  $$HymnVersesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get verseType => $state.composableBuilder(
      column: $state.table.verseType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get verseNumber => $state.composableBuilder(
      column: $state.table.verseNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lyrics => $state.composableBuilder(
      column: $state.table.lyrics,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lyricsNormalized => $state.composableBuilder(
      column: $state.table.lyricsNormalized,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get wordCount => $state.composableBuilder(
      column: $state.table.wordCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get midiStartMs => $state.composableBuilder(
      column: $state.table.midiStartMs,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get midiEndMs => $state.composableBuilder(
      column: $state.table.midiEndMs,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$HymnsTableOrderingComposer get hymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$HymnCrossReferencesTableInsertCompanionBuilder
    = HymnCrossReferencesCompanion Function({
  Value<int> id,
  required int sourceHymnId,
  required int targetHymnId,
  required String relationship,
  Value<double> confidence,
});
typedef $$HymnCrossReferencesTableUpdateCompanionBuilder
    = HymnCrossReferencesCompanion Function({
  Value<int> id,
  Value<int> sourceHymnId,
  Value<int> targetHymnId,
  Value<String> relationship,
  Value<double> confidence,
});

class $$HymnCrossReferencesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HymnCrossReferencesTable,
    HymnCrossReference,
    $$HymnCrossReferencesTableFilterComposer,
    $$HymnCrossReferencesTableOrderingComposer,
    $$HymnCrossReferencesTableProcessedTableManager,
    $$HymnCrossReferencesTableInsertCompanionBuilder,
    $$HymnCrossReferencesTableUpdateCompanionBuilder> {
  $$HymnCrossReferencesTableTableManager(
      _$AppDatabase db, $HymnCrossReferencesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$HymnCrossReferencesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$HymnCrossReferencesTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$HymnCrossReferencesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> sourceHymnId = const Value.absent(),
            Value<int> targetHymnId = const Value.absent(),
            Value<String> relationship = const Value.absent(),
            Value<double> confidence = const Value.absent(),
          }) =>
              HymnCrossReferencesCompanion(
            id: id,
            sourceHymnId: sourceHymnId,
            targetHymnId: targetHymnId,
            relationship: relationship,
            confidence: confidence,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int sourceHymnId,
            required int targetHymnId,
            required String relationship,
            Value<double> confidence = const Value.absent(),
          }) =>
              HymnCrossReferencesCompanion.insert(
            id: id,
            sourceHymnId: sourceHymnId,
            targetHymnId: targetHymnId,
            relationship: relationship,
            confidence: confidence,
          ),
        ));
}

class $$HymnCrossReferencesTableProcessedTableManager
    extends ProcessedTableManager<
        _$AppDatabase,
        $HymnCrossReferencesTable,
        HymnCrossReference,
        $$HymnCrossReferencesTableFilterComposer,
        $$HymnCrossReferencesTableOrderingComposer,
        $$HymnCrossReferencesTableProcessedTableManager,
        $$HymnCrossReferencesTableInsertCompanionBuilder,
        $$HymnCrossReferencesTableUpdateCompanionBuilder> {
  $$HymnCrossReferencesTableProcessedTableManager(super.$state);
}

class $$HymnCrossReferencesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HymnCrossReferencesTable> {
  $$HymnCrossReferencesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get relationship => $state.composableBuilder(
      column: $state.table.relationship,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get confidence => $state.composableBuilder(
      column: $state.table.confidence,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$HymnsTableFilterComposer get sourceHymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sourceHymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }

  $$HymnsTableFilterComposer get targetHymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.targetHymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$HymnCrossReferencesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HymnCrossReferencesTable> {
  $$HymnCrossReferencesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get relationship => $state.composableBuilder(
      column: $state.table.relationship,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get confidence => $state.composableBuilder(
      column: $state.table.confidence,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$HymnsTableOrderingComposer get sourceHymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sourceHymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }

  $$HymnsTableOrderingComposer get targetHymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.targetHymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$TopicsTableInsertCompanionBuilder = TopicsCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> nameSwahili,
  Value<int?> parentId,
  Value<int?> displayOrder,
});
typedef $$TopicsTableUpdateCompanionBuilder = TopicsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> nameSwahili,
  Value<int?> parentId,
  Value<int?> displayOrder,
});

class $$TopicsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TopicsTable,
    Topic,
    $$TopicsTableFilterComposer,
    $$TopicsTableOrderingComposer,
    $$TopicsTableProcessedTableManager,
    $$TopicsTableInsertCompanionBuilder,
    $$TopicsTableUpdateCompanionBuilder> {
  $$TopicsTableTableManager(_$AppDatabase db, $TopicsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TopicsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TopicsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) => $$TopicsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> nameSwahili = const Value.absent(),
            Value<int?> parentId = const Value.absent(),
            Value<int?> displayOrder = const Value.absent(),
          }) =>
              TopicsCompanion(
            id: id,
            name: name,
            nameSwahili: nameSwahili,
            parentId: parentId,
            displayOrder: displayOrder,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> nameSwahili = const Value.absent(),
            Value<int?> parentId = const Value.absent(),
            Value<int?> displayOrder = const Value.absent(),
          }) =>
              TopicsCompanion.insert(
            id: id,
            name: name,
            nameSwahili: nameSwahili,
            parentId: parentId,
            displayOrder: displayOrder,
          ),
        ));
}

class $$TopicsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $TopicsTable,
    Topic,
    $$TopicsTableFilterComposer,
    $$TopicsTableOrderingComposer,
    $$TopicsTableProcessedTableManager,
    $$TopicsTableInsertCompanionBuilder,
    $$TopicsTableUpdateCompanionBuilder> {
  $$TopicsTableProcessedTableManager(super.$state);
}

class $$TopicsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TopicsTable> {
  $$TopicsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameSwahili => $state.composableBuilder(
      column: $state.table.nameSwahili,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$TopicsTableFilterComposer get parentId {
    final $$TopicsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $state.db.topics,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$TopicsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.topics, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter hymnTopicsRefs(
      ComposableFilter Function($$HymnTopicsTableFilterComposer f) f) {
    final $$HymnTopicsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.hymnTopics,
        getReferencedColumn: (t) => t.topicId,
        builder: (joinBuilder, parentComposers) =>
            $$HymnTopicsTableFilterComposer(ComposerState($state.db,
                $state.db.hymnTopics, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TopicsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TopicsTable> {
  $$TopicsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameSwahili => $state.composableBuilder(
      column: $state.table.nameSwahili,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$TopicsTableOrderingComposer get parentId {
    final $$TopicsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $state.db.topics,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TopicsTableOrderingComposer(ComposerState(
                $state.db, $state.db.topics, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$HymnTopicsTableInsertCompanionBuilder = HymnTopicsCompanion Function({
  required int hymnId,
  required int topicId,
  Value<int> rowid,
});
typedef $$HymnTopicsTableUpdateCompanionBuilder = HymnTopicsCompanion Function({
  Value<int> hymnId,
  Value<int> topicId,
  Value<int> rowid,
});

class $$HymnTopicsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HymnTopicsTable,
    HymnTopic,
    $$HymnTopicsTableFilterComposer,
    $$HymnTopicsTableOrderingComposer,
    $$HymnTopicsTableProcessedTableManager,
    $$HymnTopicsTableInsertCompanionBuilder,
    $$HymnTopicsTableUpdateCompanionBuilder> {
  $$HymnTopicsTableTableManager(_$AppDatabase db, $HymnTopicsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$HymnTopicsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$HymnTopicsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$HymnTopicsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> hymnId = const Value.absent(),
            Value<int> topicId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              HymnTopicsCompanion(
            hymnId: hymnId,
            topicId: topicId,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required int hymnId,
            required int topicId,
            Value<int> rowid = const Value.absent(),
          }) =>
              HymnTopicsCompanion.insert(
            hymnId: hymnId,
            topicId: topicId,
            rowid: rowid,
          ),
        ));
}

class $$HymnTopicsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $HymnTopicsTable,
    HymnTopic,
    $$HymnTopicsTableFilterComposer,
    $$HymnTopicsTableOrderingComposer,
    $$HymnTopicsTableProcessedTableManager,
    $$HymnTopicsTableInsertCompanionBuilder,
    $$HymnTopicsTableUpdateCompanionBuilder> {
  $$HymnTopicsTableProcessedTableManager(super.$state);
}

class $$HymnTopicsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HymnTopicsTable> {
  $$HymnTopicsTableFilterComposer(super.$state);
  $$HymnsTableFilterComposer get hymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }

  $$TopicsTableFilterComposer get topicId {
    final $$TopicsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.topicId,
        referencedTable: $state.db.topics,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$TopicsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.topics, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$HymnTopicsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HymnTopicsTable> {
  $$HymnTopicsTableOrderingComposer(super.$state);
  $$HymnsTableOrderingComposer get hymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }

  $$TopicsTableOrderingComposer get topicId {
    final $$TopicsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.topicId,
        referencedTable: $state.db.topics,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TopicsTableOrderingComposer(ComposerState(
                $state.db, $state.db.topics, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$FavoriteFoldersTableInsertCompanionBuilder = FavoriteFoldersCompanion
    Function({
  Value<int> id,
  required String name,
  Value<String?> color,
  Value<String?> icon,
  required int createdAt,
  Value<int> displayOrder,
});
typedef $$FavoriteFoldersTableUpdateCompanionBuilder = FavoriteFoldersCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String?> color,
  Value<String?> icon,
  Value<int> createdAt,
  Value<int> displayOrder,
});

class $$FavoriteFoldersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FavoriteFoldersTable,
    FavoriteFolder,
    $$FavoriteFoldersTableFilterComposer,
    $$FavoriteFoldersTableOrderingComposer,
    $$FavoriteFoldersTableProcessedTableManager,
    $$FavoriteFoldersTableInsertCompanionBuilder,
    $$FavoriteFoldersTableUpdateCompanionBuilder> {
  $$FavoriteFoldersTableTableManager(
      _$AppDatabase db, $FavoriteFoldersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FavoriteFoldersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FavoriteFoldersTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$FavoriteFoldersTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<String?> icon = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
            Value<int> displayOrder = const Value.absent(),
          }) =>
              FavoriteFoldersCompanion(
            id: id,
            name: name,
            color: color,
            icon: icon,
            createdAt: createdAt,
            displayOrder: displayOrder,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> color = const Value.absent(),
            Value<String?> icon = const Value.absent(),
            required int createdAt,
            Value<int> displayOrder = const Value.absent(),
          }) =>
              FavoriteFoldersCompanion.insert(
            id: id,
            name: name,
            color: color,
            icon: icon,
            createdAt: createdAt,
            displayOrder: displayOrder,
          ),
        ));
}

class $$FavoriteFoldersTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $FavoriteFoldersTable,
    FavoriteFolder,
    $$FavoriteFoldersTableFilterComposer,
    $$FavoriteFoldersTableOrderingComposer,
    $$FavoriteFoldersTableProcessedTableManager,
    $$FavoriteFoldersTableInsertCompanionBuilder,
    $$FavoriteFoldersTableUpdateCompanionBuilder> {
  $$FavoriteFoldersTableProcessedTableManager(super.$state);
}

class $$FavoriteFoldersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $FavoriteFoldersTable> {
  $$FavoriteFoldersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get icon => $state.composableBuilder(
      column: $state.table.icon,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter userFavoritesRefs(
      ComposableFilter Function($$UserFavoritesTableFilterComposer f) f) {
    final $$UserFavoritesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.userFavorites,
        getReferencedColumn: (t) => t.folderId,
        builder: (joinBuilder, parentComposers) =>
            $$UserFavoritesTableFilterComposer(ComposerState($state.db,
                $state.db.userFavorites, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$FavoriteFoldersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $FavoriteFoldersTable> {
  $$FavoriteFoldersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get icon => $state.composableBuilder(
      column: $state.table.icon,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UserFavoritesTableInsertCompanionBuilder = UserFavoritesCompanion
    Function({
  Value<int> id,
  required int hymnId,
  Value<int?> folderId,
  required int addedAt,
  Value<String?> personalNote,
  Value<int?> displayOrder,
});
typedef $$UserFavoritesTableUpdateCompanionBuilder = UserFavoritesCompanion
    Function({
  Value<int> id,
  Value<int> hymnId,
  Value<int?> folderId,
  Value<int> addedAt,
  Value<String?> personalNote,
  Value<int?> displayOrder,
});

class $$UserFavoritesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserFavoritesTable,
    UserFavorite,
    $$UserFavoritesTableFilterComposer,
    $$UserFavoritesTableOrderingComposer,
    $$UserFavoritesTableProcessedTableManager,
    $$UserFavoritesTableInsertCompanionBuilder,
    $$UserFavoritesTableUpdateCompanionBuilder> {
  $$UserFavoritesTableTableManager(_$AppDatabase db, $UserFavoritesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserFavoritesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserFavoritesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UserFavoritesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> hymnId = const Value.absent(),
            Value<int?> folderId = const Value.absent(),
            Value<int> addedAt = const Value.absent(),
            Value<String?> personalNote = const Value.absent(),
            Value<int?> displayOrder = const Value.absent(),
          }) =>
              UserFavoritesCompanion(
            id: id,
            hymnId: hymnId,
            folderId: folderId,
            addedAt: addedAt,
            personalNote: personalNote,
            displayOrder: displayOrder,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int hymnId,
            Value<int?> folderId = const Value.absent(),
            required int addedAt,
            Value<String?> personalNote = const Value.absent(),
            Value<int?> displayOrder = const Value.absent(),
          }) =>
              UserFavoritesCompanion.insert(
            id: id,
            hymnId: hymnId,
            folderId: folderId,
            addedAt: addedAt,
            personalNote: personalNote,
            displayOrder: displayOrder,
          ),
        ));
}

class $$UserFavoritesTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $UserFavoritesTable,
    UserFavorite,
    $$UserFavoritesTableFilterComposer,
    $$UserFavoritesTableOrderingComposer,
    $$UserFavoritesTableProcessedTableManager,
    $$UserFavoritesTableInsertCompanionBuilder,
    $$UserFavoritesTableUpdateCompanionBuilder> {
  $$UserFavoritesTableProcessedTableManager(super.$state);
}

class $$UserFavoritesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserFavoritesTable> {
  $$UserFavoritesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get addedAt => $state.composableBuilder(
      column: $state.table.addedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get personalNote => $state.composableBuilder(
      column: $state.table.personalNote,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$HymnsTableFilterComposer get hymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }

  $$FavoriteFoldersTableFilterComposer get folderId {
    final $$FavoriteFoldersTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.folderId,
            referencedTable: $state.db.favoriteFolders,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$FavoriteFoldersTableFilterComposer(ComposerState($state.db,
                    $state.db.favoriteFolders, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$UserFavoritesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserFavoritesTable> {
  $$UserFavoritesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get addedAt => $state.composableBuilder(
      column: $state.table.addedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get personalNote => $state.composableBuilder(
      column: $state.table.personalNote,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$HymnsTableOrderingComposer get hymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }

  $$FavoriteFoldersTableOrderingComposer get folderId {
    final $$FavoriteFoldersTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.folderId,
            referencedTable: $state.db.favoriteFolders,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$FavoriteFoldersTableOrderingComposer(ComposerState($state.db,
                    $state.db.favoriteFolders, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$SearchHistoryTableInsertCompanionBuilder = SearchHistoryCompanion
    Function({
  Value<int> id,
  required String query,
  required String searchType,
  Value<String?> filtersJson,
  Value<int?> resultCount,
  required int searchedAt,
  Value<bool> isSaved,
  Value<String?> savedName,
});
typedef $$SearchHistoryTableUpdateCompanionBuilder = SearchHistoryCompanion
    Function({
  Value<int> id,
  Value<String> query,
  Value<String> searchType,
  Value<String?> filtersJson,
  Value<int?> resultCount,
  Value<int> searchedAt,
  Value<bool> isSaved,
  Value<String?> savedName,
});

class $$SearchHistoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SearchHistoryTable,
    SearchHistoryData,
    $$SearchHistoryTableFilterComposer,
    $$SearchHistoryTableOrderingComposer,
    $$SearchHistoryTableProcessedTableManager,
    $$SearchHistoryTableInsertCompanionBuilder,
    $$SearchHistoryTableUpdateCompanionBuilder> {
  $$SearchHistoryTableTableManager(_$AppDatabase db, $SearchHistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SearchHistoryTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SearchHistoryTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SearchHistoryTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> query = const Value.absent(),
            Value<String> searchType = const Value.absent(),
            Value<String?> filtersJson = const Value.absent(),
            Value<int?> resultCount = const Value.absent(),
            Value<int> searchedAt = const Value.absent(),
            Value<bool> isSaved = const Value.absent(),
            Value<String?> savedName = const Value.absent(),
          }) =>
              SearchHistoryCompanion(
            id: id,
            query: query,
            searchType: searchType,
            filtersJson: filtersJson,
            resultCount: resultCount,
            searchedAt: searchedAt,
            isSaved: isSaved,
            savedName: savedName,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String query,
            required String searchType,
            Value<String?> filtersJson = const Value.absent(),
            Value<int?> resultCount = const Value.absent(),
            required int searchedAt,
            Value<bool> isSaved = const Value.absent(),
            Value<String?> savedName = const Value.absent(),
          }) =>
              SearchHistoryCompanion.insert(
            id: id,
            query: query,
            searchType: searchType,
            filtersJson: filtersJson,
            resultCount: resultCount,
            searchedAt: searchedAt,
            isSaved: isSaved,
            savedName: savedName,
          ),
        ));
}

class $$SearchHistoryTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $SearchHistoryTable,
    SearchHistoryData,
    $$SearchHistoryTableFilterComposer,
    $$SearchHistoryTableOrderingComposer,
    $$SearchHistoryTableProcessedTableManager,
    $$SearchHistoryTableInsertCompanionBuilder,
    $$SearchHistoryTableUpdateCompanionBuilder> {
  $$SearchHistoryTableProcessedTableManager(super.$state);
}

class $$SearchHistoryTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SearchHistoryTable> {
  $$SearchHistoryTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get query => $state.composableBuilder(
      column: $state.table.query,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get searchType => $state.composableBuilder(
      column: $state.table.searchType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get filtersJson => $state.composableBuilder(
      column: $state.table.filtersJson,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get resultCount => $state.composableBuilder(
      column: $state.table.resultCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get searchedAt => $state.composableBuilder(
      column: $state.table.searchedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isSaved => $state.composableBuilder(
      column: $state.table.isSaved,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get savedName => $state.composableBuilder(
      column: $state.table.savedName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SearchHistoryTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SearchHistoryTable> {
  $$SearchHistoryTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get query => $state.composableBuilder(
      column: $state.table.query,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get searchType => $state.composableBuilder(
      column: $state.table.searchType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get filtersJson => $state.composableBuilder(
      column: $state.table.filtersJson,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get resultCount => $state.composableBuilder(
      column: $state.table.resultCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get searchedAt => $state.composableBuilder(
      column: $state.table.searchedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isSaved => $state.composableBuilder(
      column: $state.table.isSaved,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get savedName => $state.composableBuilder(
      column: $state.table.savedName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$WorshipProgramsTableInsertCompanionBuilder = WorshipProgramsCompanion
    Function({
  Value<int> id,
  required String title,
  Value<int?> date,
  Value<String?> churchName,
  Value<String?> serviceType,
  Value<String?> notes,
  required int createdAt,
  required int updatedAt,
  Value<bool> isTemplate,
});
typedef $$WorshipProgramsTableUpdateCompanionBuilder = WorshipProgramsCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<int?> date,
  Value<String?> churchName,
  Value<String?> serviceType,
  Value<String?> notes,
  Value<int> createdAt,
  Value<int> updatedAt,
  Value<bool> isTemplate,
});

class $$WorshipProgramsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WorshipProgramsTable,
    WorshipProgram,
    $$WorshipProgramsTableFilterComposer,
    $$WorshipProgramsTableOrderingComposer,
    $$WorshipProgramsTableProcessedTableManager,
    $$WorshipProgramsTableInsertCompanionBuilder,
    $$WorshipProgramsTableUpdateCompanionBuilder> {
  $$WorshipProgramsTableTableManager(
      _$AppDatabase db, $WorshipProgramsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$WorshipProgramsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$WorshipProgramsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$WorshipProgramsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int?> date = const Value.absent(),
            Value<String?> churchName = const Value.absent(),
            Value<String?> serviceType = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
            Value<bool> isTemplate = const Value.absent(),
          }) =>
              WorshipProgramsCompanion(
            id: id,
            title: title,
            date: date,
            churchName: churchName,
            serviceType: serviceType,
            notes: notes,
            createdAt: createdAt,
            updatedAt: updatedAt,
            isTemplate: isTemplate,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String title,
            Value<int?> date = const Value.absent(),
            Value<String?> churchName = const Value.absent(),
            Value<String?> serviceType = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            required int createdAt,
            required int updatedAt,
            Value<bool> isTemplate = const Value.absent(),
          }) =>
              WorshipProgramsCompanion.insert(
            id: id,
            title: title,
            date: date,
            churchName: churchName,
            serviceType: serviceType,
            notes: notes,
            createdAt: createdAt,
            updatedAt: updatedAt,
            isTemplate: isTemplate,
          ),
        ));
}

class $$WorshipProgramsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $WorshipProgramsTable,
    WorshipProgram,
    $$WorshipProgramsTableFilterComposer,
    $$WorshipProgramsTableOrderingComposer,
    $$WorshipProgramsTableProcessedTableManager,
    $$WorshipProgramsTableInsertCompanionBuilder,
    $$WorshipProgramsTableUpdateCompanionBuilder> {
  $$WorshipProgramsTableProcessedTableManager(super.$state);
}

class $$WorshipProgramsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $WorshipProgramsTable> {
  $$WorshipProgramsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get churchName => $state.composableBuilder(
      column: $state.table.churchName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serviceType => $state.composableBuilder(
      column: $state.table.serviceType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isTemplate => $state.composableBuilder(
      column: $state.table.isTemplate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter programItemsRefs(
      ComposableFilter Function($$ProgramItemsTableFilterComposer f) f) {
    final $$ProgramItemsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.programItems,
        getReferencedColumn: (t) => t.programId,
        builder: (joinBuilder, parentComposers) =>
            $$ProgramItemsTableFilterComposer(ComposerState($state.db,
                $state.db.programItems, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$WorshipProgramsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $WorshipProgramsTable> {
  $$WorshipProgramsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get churchName => $state.composableBuilder(
      column: $state.table.churchName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serviceType => $state.composableBuilder(
      column: $state.table.serviceType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isTemplate => $state.composableBuilder(
      column: $state.table.isTemplate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ProgramItemsTableInsertCompanionBuilder = ProgramItemsCompanion
    Function({
  Value<int> id,
  required int programId,
  required int displayOrder,
  required String itemType,
  Value<int?> hymnId,
  Value<String?> customTitle,
  Value<String?> customContent,
  Value<int?> durationMinutes,
  Value<String?> notes,
  Value<bool> isComplete,
});
typedef $$ProgramItemsTableUpdateCompanionBuilder = ProgramItemsCompanion
    Function({
  Value<int> id,
  Value<int> programId,
  Value<int> displayOrder,
  Value<String> itemType,
  Value<int?> hymnId,
  Value<String?> customTitle,
  Value<String?> customContent,
  Value<int?> durationMinutes,
  Value<String?> notes,
  Value<bool> isComplete,
});

class $$ProgramItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProgramItemsTable,
    ProgramItem,
    $$ProgramItemsTableFilterComposer,
    $$ProgramItemsTableOrderingComposer,
    $$ProgramItemsTableProcessedTableManager,
    $$ProgramItemsTableInsertCompanionBuilder,
    $$ProgramItemsTableUpdateCompanionBuilder> {
  $$ProgramItemsTableTableManager(_$AppDatabase db, $ProgramItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ProgramItemsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ProgramItemsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$ProgramItemsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> programId = const Value.absent(),
            Value<int> displayOrder = const Value.absent(),
            Value<String> itemType = const Value.absent(),
            Value<int?> hymnId = const Value.absent(),
            Value<String?> customTitle = const Value.absent(),
            Value<String?> customContent = const Value.absent(),
            Value<int?> durationMinutes = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<bool> isComplete = const Value.absent(),
          }) =>
              ProgramItemsCompanion(
            id: id,
            programId: programId,
            displayOrder: displayOrder,
            itemType: itemType,
            hymnId: hymnId,
            customTitle: customTitle,
            customContent: customContent,
            durationMinutes: durationMinutes,
            notes: notes,
            isComplete: isComplete,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int programId,
            required int displayOrder,
            required String itemType,
            Value<int?> hymnId = const Value.absent(),
            Value<String?> customTitle = const Value.absent(),
            Value<String?> customContent = const Value.absent(),
            Value<int?> durationMinutes = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<bool> isComplete = const Value.absent(),
          }) =>
              ProgramItemsCompanion.insert(
            id: id,
            programId: programId,
            displayOrder: displayOrder,
            itemType: itemType,
            hymnId: hymnId,
            customTitle: customTitle,
            customContent: customContent,
            durationMinutes: durationMinutes,
            notes: notes,
            isComplete: isComplete,
          ),
        ));
}

class $$ProgramItemsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $ProgramItemsTable,
    ProgramItem,
    $$ProgramItemsTableFilterComposer,
    $$ProgramItemsTableOrderingComposer,
    $$ProgramItemsTableProcessedTableManager,
    $$ProgramItemsTableInsertCompanionBuilder,
    $$ProgramItemsTableUpdateCompanionBuilder> {
  $$ProgramItemsTableProcessedTableManager(super.$state);
}

class $$ProgramItemsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ProgramItemsTable> {
  $$ProgramItemsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemType => $state.composableBuilder(
      column: $state.table.itemType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get customTitle => $state.composableBuilder(
      column: $state.table.customTitle,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get customContent => $state.composableBuilder(
      column: $state.table.customContent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get durationMinutes => $state.composableBuilder(
      column: $state.table.durationMinutes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isComplete => $state.composableBuilder(
      column: $state.table.isComplete,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$WorshipProgramsTableFilterComposer get programId {
    final $$WorshipProgramsTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.programId,
            referencedTable: $state.db.worshipPrograms,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$WorshipProgramsTableFilterComposer(ComposerState($state.db,
                    $state.db.worshipPrograms, joinBuilder, parentComposers)));
    return composer;
  }

  $$HymnsTableFilterComposer get hymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$ProgramItemsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ProgramItemsTable> {
  $$ProgramItemsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get displayOrder => $state.composableBuilder(
      column: $state.table.displayOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemType => $state.composableBuilder(
      column: $state.table.itemType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get customTitle => $state.composableBuilder(
      column: $state.table.customTitle,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get customContent => $state.composableBuilder(
      column: $state.table.customContent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get durationMinutes => $state.composableBuilder(
      column: $state.table.durationMinutes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isComplete => $state.composableBuilder(
      column: $state.table.isComplete,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$WorshipProgramsTableOrderingComposer get programId {
    final $$WorshipProgramsTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.programId,
            referencedTable: $state.db.worshipPrograms,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$WorshipProgramsTableOrderingComposer(ComposerState($state.db,
                    $state.db.worshipPrograms, joinBuilder, parentComposers)));
    return composer;
  }

  $$HymnsTableOrderingComposer get hymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$UserSettingsTableInsertCompanionBuilder = UserSettingsCompanion
    Function({
  Value<int> id,
  Value<String> theme,
  Value<String> accentColor,
  Value<int> fontSize,
  Value<String> fontFamily,
  Value<String> lineSpacing,
  Value<String> readerMode,
  Value<bool> showVerseLabels,
  Value<bool> showTuneName,
  Value<bool> showMeter,
  Value<bool> showComposer,
  Value<bool> showScriptureRef,
  Value<bool> showChords,
  Value<bool> highlightCurrentLine,
  Value<String> midiInstrument,
  Value<double> midiTempoMultiplier,
  Value<int> midiTranspose,
  Value<String> midiRepeatMode,
  Value<bool> midiCountIn,
  Value<bool> midiVerseByVerse,
  Value<bool> autoScroll,
  Value<bool> backgroundPlayback,
  Value<String> defaultSearchMode,
  Value<String> searchLanguageFilter,
  Value<String> searchCollectionFilter,
  Value<String?> savedFiltersJson,
  Value<String> activeCollectionIds,
  Value<String> displayLanguage,
  Value<bool> showIntroAnimation,
  Value<bool> reduceMotion,
  Value<String> premiumStatus,
  Value<int?> premiumExpiry,
  Value<bool> cloudSyncEnabled,
  Value<bool> analyticsEnabled,
  Value<int> rowid,
});
typedef $$UserSettingsTableUpdateCompanionBuilder = UserSettingsCompanion
    Function({
  Value<int> id,
  Value<String> theme,
  Value<String> accentColor,
  Value<int> fontSize,
  Value<String> fontFamily,
  Value<String> lineSpacing,
  Value<String> readerMode,
  Value<bool> showVerseLabels,
  Value<bool> showTuneName,
  Value<bool> showMeter,
  Value<bool> showComposer,
  Value<bool> showScriptureRef,
  Value<bool> showChords,
  Value<bool> highlightCurrentLine,
  Value<String> midiInstrument,
  Value<double> midiTempoMultiplier,
  Value<int> midiTranspose,
  Value<String> midiRepeatMode,
  Value<bool> midiCountIn,
  Value<bool> midiVerseByVerse,
  Value<bool> autoScroll,
  Value<bool> backgroundPlayback,
  Value<String> defaultSearchMode,
  Value<String> searchLanguageFilter,
  Value<String> searchCollectionFilter,
  Value<String?> savedFiltersJson,
  Value<String> activeCollectionIds,
  Value<String> displayLanguage,
  Value<bool> showIntroAnimation,
  Value<bool> reduceMotion,
  Value<String> premiumStatus,
  Value<int?> premiumExpiry,
  Value<bool> cloudSyncEnabled,
  Value<bool> analyticsEnabled,
  Value<int> rowid,
});

class $$UserSettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserSettingsTable,
    UserSetting,
    $$UserSettingsTableFilterComposer,
    $$UserSettingsTableOrderingComposer,
    $$UserSettingsTableProcessedTableManager,
    $$UserSettingsTableInsertCompanionBuilder,
    $$UserSettingsTableUpdateCompanionBuilder> {
  $$UserSettingsTableTableManager(_$AppDatabase db, $UserSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserSettingsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserSettingsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UserSettingsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> theme = const Value.absent(),
            Value<String> accentColor = const Value.absent(),
            Value<int> fontSize = const Value.absent(),
            Value<String> fontFamily = const Value.absent(),
            Value<String> lineSpacing = const Value.absent(),
            Value<String> readerMode = const Value.absent(),
            Value<bool> showVerseLabels = const Value.absent(),
            Value<bool> showTuneName = const Value.absent(),
            Value<bool> showMeter = const Value.absent(),
            Value<bool> showComposer = const Value.absent(),
            Value<bool> showScriptureRef = const Value.absent(),
            Value<bool> showChords = const Value.absent(),
            Value<bool> highlightCurrentLine = const Value.absent(),
            Value<String> midiInstrument = const Value.absent(),
            Value<double> midiTempoMultiplier = const Value.absent(),
            Value<int> midiTranspose = const Value.absent(),
            Value<String> midiRepeatMode = const Value.absent(),
            Value<bool> midiCountIn = const Value.absent(),
            Value<bool> midiVerseByVerse = const Value.absent(),
            Value<bool> autoScroll = const Value.absent(),
            Value<bool> backgroundPlayback = const Value.absent(),
            Value<String> defaultSearchMode = const Value.absent(),
            Value<String> searchLanguageFilter = const Value.absent(),
            Value<String> searchCollectionFilter = const Value.absent(),
            Value<String?> savedFiltersJson = const Value.absent(),
            Value<String> activeCollectionIds = const Value.absent(),
            Value<String> displayLanguage = const Value.absent(),
            Value<bool> showIntroAnimation = const Value.absent(),
            Value<bool> reduceMotion = const Value.absent(),
            Value<String> premiumStatus = const Value.absent(),
            Value<int?> premiumExpiry = const Value.absent(),
            Value<bool> cloudSyncEnabled = const Value.absent(),
            Value<bool> analyticsEnabled = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserSettingsCompanion(
            id: id,
            theme: theme,
            accentColor: accentColor,
            fontSize: fontSize,
            fontFamily: fontFamily,
            lineSpacing: lineSpacing,
            readerMode: readerMode,
            showVerseLabels: showVerseLabels,
            showTuneName: showTuneName,
            showMeter: showMeter,
            showComposer: showComposer,
            showScriptureRef: showScriptureRef,
            showChords: showChords,
            highlightCurrentLine: highlightCurrentLine,
            midiInstrument: midiInstrument,
            midiTempoMultiplier: midiTempoMultiplier,
            midiTranspose: midiTranspose,
            midiRepeatMode: midiRepeatMode,
            midiCountIn: midiCountIn,
            midiVerseByVerse: midiVerseByVerse,
            autoScroll: autoScroll,
            backgroundPlayback: backgroundPlayback,
            defaultSearchMode: defaultSearchMode,
            searchLanguageFilter: searchLanguageFilter,
            searchCollectionFilter: searchCollectionFilter,
            savedFiltersJson: savedFiltersJson,
            activeCollectionIds: activeCollectionIds,
            displayLanguage: displayLanguage,
            showIntroAnimation: showIntroAnimation,
            reduceMotion: reduceMotion,
            premiumStatus: premiumStatus,
            premiumExpiry: premiumExpiry,
            cloudSyncEnabled: cloudSyncEnabled,
            analyticsEnabled: analyticsEnabled,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> theme = const Value.absent(),
            Value<String> accentColor = const Value.absent(),
            Value<int> fontSize = const Value.absent(),
            Value<String> fontFamily = const Value.absent(),
            Value<String> lineSpacing = const Value.absent(),
            Value<String> readerMode = const Value.absent(),
            Value<bool> showVerseLabels = const Value.absent(),
            Value<bool> showTuneName = const Value.absent(),
            Value<bool> showMeter = const Value.absent(),
            Value<bool> showComposer = const Value.absent(),
            Value<bool> showScriptureRef = const Value.absent(),
            Value<bool> showChords = const Value.absent(),
            Value<bool> highlightCurrentLine = const Value.absent(),
            Value<String> midiInstrument = const Value.absent(),
            Value<double> midiTempoMultiplier = const Value.absent(),
            Value<int> midiTranspose = const Value.absent(),
            Value<String> midiRepeatMode = const Value.absent(),
            Value<bool> midiCountIn = const Value.absent(),
            Value<bool> midiVerseByVerse = const Value.absent(),
            Value<bool> autoScroll = const Value.absent(),
            Value<bool> backgroundPlayback = const Value.absent(),
            Value<String> defaultSearchMode = const Value.absent(),
            Value<String> searchLanguageFilter = const Value.absent(),
            Value<String> searchCollectionFilter = const Value.absent(),
            Value<String?> savedFiltersJson = const Value.absent(),
            Value<String> activeCollectionIds = const Value.absent(),
            Value<String> displayLanguage = const Value.absent(),
            Value<bool> showIntroAnimation = const Value.absent(),
            Value<bool> reduceMotion = const Value.absent(),
            Value<String> premiumStatus = const Value.absent(),
            Value<int?> premiumExpiry = const Value.absent(),
            Value<bool> cloudSyncEnabled = const Value.absent(),
            Value<bool> analyticsEnabled = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserSettingsCompanion.insert(
            id: id,
            theme: theme,
            accentColor: accentColor,
            fontSize: fontSize,
            fontFamily: fontFamily,
            lineSpacing: lineSpacing,
            readerMode: readerMode,
            showVerseLabels: showVerseLabels,
            showTuneName: showTuneName,
            showMeter: showMeter,
            showComposer: showComposer,
            showScriptureRef: showScriptureRef,
            showChords: showChords,
            highlightCurrentLine: highlightCurrentLine,
            midiInstrument: midiInstrument,
            midiTempoMultiplier: midiTempoMultiplier,
            midiTranspose: midiTranspose,
            midiRepeatMode: midiRepeatMode,
            midiCountIn: midiCountIn,
            midiVerseByVerse: midiVerseByVerse,
            autoScroll: autoScroll,
            backgroundPlayback: backgroundPlayback,
            defaultSearchMode: defaultSearchMode,
            searchLanguageFilter: searchLanguageFilter,
            searchCollectionFilter: searchCollectionFilter,
            savedFiltersJson: savedFiltersJson,
            activeCollectionIds: activeCollectionIds,
            displayLanguage: displayLanguage,
            showIntroAnimation: showIntroAnimation,
            reduceMotion: reduceMotion,
            premiumStatus: premiumStatus,
            premiumExpiry: premiumExpiry,
            cloudSyncEnabled: cloudSyncEnabled,
            analyticsEnabled: analyticsEnabled,
            rowid: rowid,
          ),
        ));
}

class $$UserSettingsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $UserSettingsTable,
    UserSetting,
    $$UserSettingsTableFilterComposer,
    $$UserSettingsTableOrderingComposer,
    $$UserSettingsTableProcessedTableManager,
    $$UserSettingsTableInsertCompanionBuilder,
    $$UserSettingsTableUpdateCompanionBuilder> {
  $$UserSettingsTableProcessedTableManager(super.$state);
}

class $$UserSettingsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserSettingsTable> {
  $$UserSettingsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get theme => $state.composableBuilder(
      column: $state.table.theme,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get accentColor => $state.composableBuilder(
      column: $state.table.accentColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get fontSize => $state.composableBuilder(
      column: $state.table.fontSize,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fontFamily => $state.composableBuilder(
      column: $state.table.fontFamily,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lineSpacing => $state.composableBuilder(
      column: $state.table.lineSpacing,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get readerMode => $state.composableBuilder(
      column: $state.table.readerMode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showVerseLabels => $state.composableBuilder(
      column: $state.table.showVerseLabels,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showTuneName => $state.composableBuilder(
      column: $state.table.showTuneName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showMeter => $state.composableBuilder(
      column: $state.table.showMeter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showComposer => $state.composableBuilder(
      column: $state.table.showComposer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showScriptureRef => $state.composableBuilder(
      column: $state.table.showScriptureRef,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showChords => $state.composableBuilder(
      column: $state.table.showChords,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get highlightCurrentLine => $state.composableBuilder(
      column: $state.table.highlightCurrentLine,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get midiInstrument => $state.composableBuilder(
      column: $state.table.midiInstrument,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get midiTempoMultiplier => $state.composableBuilder(
      column: $state.table.midiTempoMultiplier,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get midiTranspose => $state.composableBuilder(
      column: $state.table.midiTranspose,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get midiRepeatMode => $state.composableBuilder(
      column: $state.table.midiRepeatMode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get midiCountIn => $state.composableBuilder(
      column: $state.table.midiCountIn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get midiVerseByVerse => $state.composableBuilder(
      column: $state.table.midiVerseByVerse,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get autoScroll => $state.composableBuilder(
      column: $state.table.autoScroll,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get backgroundPlayback => $state.composableBuilder(
      column: $state.table.backgroundPlayback,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get defaultSearchMode => $state.composableBuilder(
      column: $state.table.defaultSearchMode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get searchLanguageFilter => $state.composableBuilder(
      column: $state.table.searchLanguageFilter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get searchCollectionFilter => $state.composableBuilder(
      column: $state.table.searchCollectionFilter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get savedFiltersJson => $state.composableBuilder(
      column: $state.table.savedFiltersJson,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get activeCollectionIds => $state.composableBuilder(
      column: $state.table.activeCollectionIds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get displayLanguage => $state.composableBuilder(
      column: $state.table.displayLanguage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get showIntroAnimation => $state.composableBuilder(
      column: $state.table.showIntroAnimation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get reduceMotion => $state.composableBuilder(
      column: $state.table.reduceMotion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get premiumStatus => $state.composableBuilder(
      column: $state.table.premiumStatus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get premiumExpiry => $state.composableBuilder(
      column: $state.table.premiumExpiry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get cloudSyncEnabled => $state.composableBuilder(
      column: $state.table.cloudSyncEnabled,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get analyticsEnabled => $state.composableBuilder(
      column: $state.table.analyticsEnabled,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserSettingsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserSettingsTable> {
  $$UserSettingsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get theme => $state.composableBuilder(
      column: $state.table.theme,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get accentColor => $state.composableBuilder(
      column: $state.table.accentColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get fontSize => $state.composableBuilder(
      column: $state.table.fontSize,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fontFamily => $state.composableBuilder(
      column: $state.table.fontFamily,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lineSpacing => $state.composableBuilder(
      column: $state.table.lineSpacing,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get readerMode => $state.composableBuilder(
      column: $state.table.readerMode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showVerseLabels => $state.composableBuilder(
      column: $state.table.showVerseLabels,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showTuneName => $state.composableBuilder(
      column: $state.table.showTuneName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showMeter => $state.composableBuilder(
      column: $state.table.showMeter,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showComposer => $state.composableBuilder(
      column: $state.table.showComposer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showScriptureRef => $state.composableBuilder(
      column: $state.table.showScriptureRef,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showChords => $state.composableBuilder(
      column: $state.table.showChords,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get highlightCurrentLine => $state.composableBuilder(
      column: $state.table.highlightCurrentLine,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get midiInstrument => $state.composableBuilder(
      column: $state.table.midiInstrument,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get midiTempoMultiplier => $state.composableBuilder(
      column: $state.table.midiTempoMultiplier,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get midiTranspose => $state.composableBuilder(
      column: $state.table.midiTranspose,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get midiRepeatMode => $state.composableBuilder(
      column: $state.table.midiRepeatMode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get midiCountIn => $state.composableBuilder(
      column: $state.table.midiCountIn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get midiVerseByVerse => $state.composableBuilder(
      column: $state.table.midiVerseByVerse,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get autoScroll => $state.composableBuilder(
      column: $state.table.autoScroll,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get backgroundPlayback => $state.composableBuilder(
      column: $state.table.backgroundPlayback,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get defaultSearchMode => $state.composableBuilder(
      column: $state.table.defaultSearchMode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get searchLanguageFilter => $state.composableBuilder(
      column: $state.table.searchLanguageFilter,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get searchCollectionFilter =>
      $state.composableBuilder(
          column: $state.table.searchCollectionFilter,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get savedFiltersJson => $state.composableBuilder(
      column: $state.table.savedFiltersJson,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get activeCollectionIds => $state.composableBuilder(
      column: $state.table.activeCollectionIds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get displayLanguage => $state.composableBuilder(
      column: $state.table.displayLanguage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get showIntroAnimation => $state.composableBuilder(
      column: $state.table.showIntroAnimation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get reduceMotion => $state.composableBuilder(
      column: $state.table.reduceMotion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get premiumStatus => $state.composableBuilder(
      column: $state.table.premiumStatus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get premiumExpiry => $state.composableBuilder(
      column: $state.table.premiumExpiry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get cloudSyncEnabled => $state.composableBuilder(
      column: $state.table.cloudSyncEnabled,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get analyticsEnabled => $state.composableBuilder(
      column: $state.table.analyticsEnabled,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$HymnNotesTableInsertCompanionBuilder = HymnNotesCompanion Function({
  Value<int> id,
  required int hymnId,
  required String content,
  required int createdAt,
  required int updatedAt,
});
typedef $$HymnNotesTableUpdateCompanionBuilder = HymnNotesCompanion Function({
  Value<int> id,
  Value<int> hymnId,
  Value<String> content,
  Value<int> createdAt,
  Value<int> updatedAt,
});

class $$HymnNotesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HymnNotesTable,
    HymnNote,
    $$HymnNotesTableFilterComposer,
    $$HymnNotesTableOrderingComposer,
    $$HymnNotesTableProcessedTableManager,
    $$HymnNotesTableInsertCompanionBuilder,
    $$HymnNotesTableUpdateCompanionBuilder> {
  $$HymnNotesTableTableManager(_$AppDatabase db, $HymnNotesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$HymnNotesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$HymnNotesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$HymnNotesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> hymnId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
          }) =>
              HymnNotesCompanion(
            id: id,
            hymnId: hymnId,
            content: content,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int hymnId,
            required String content,
            required int createdAt,
            required int updatedAt,
          }) =>
              HymnNotesCompanion.insert(
            id: id,
            hymnId: hymnId,
            content: content,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
        ));
}

class $$HymnNotesTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $HymnNotesTable,
    HymnNote,
    $$HymnNotesTableFilterComposer,
    $$HymnNotesTableOrderingComposer,
    $$HymnNotesTableProcessedTableManager,
    $$HymnNotesTableInsertCompanionBuilder,
    $$HymnNotesTableUpdateCompanionBuilder> {
  $$HymnNotesTableProcessedTableManager(super.$state);
}

class $$HymnNotesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HymnNotesTable> {
  $$HymnNotesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$HymnsTableFilterComposer get hymnId {
    final $$HymnsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$HymnNotesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HymnNotesTable> {
  $$HymnNotesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$HymnsTableOrderingComposer get hymnId {
    final $$HymnsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.hymnId,
        referencedTable: $state.db.hymns,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$HymnsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.hymns, joinBuilder, parentComposers)));
    return composer;
  }
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$CollectionsTableTableManager get collections =>
      $$CollectionsTableTableManager(_db, _db.collections);
  $$PersonsTableTableManager get persons =>
      $$PersonsTableTableManager(_db, _db.persons);
  $$SongEmbeddingsTableTableManager get songEmbeddings =>
      $$SongEmbeddingsTableTableManager(_db, _db.songEmbeddings);
  $$HymnsTableTableManager get hymns =>
      $$HymnsTableTableManager(_db, _db.hymns);
  $$HymnVersesTableTableManager get hymnVerses =>
      $$HymnVersesTableTableManager(_db, _db.hymnVerses);
  $$HymnCrossReferencesTableTableManager get hymnCrossReferences =>
      $$HymnCrossReferencesTableTableManager(_db, _db.hymnCrossReferences);
  $$TopicsTableTableManager get topics =>
      $$TopicsTableTableManager(_db, _db.topics);
  $$HymnTopicsTableTableManager get hymnTopics =>
      $$HymnTopicsTableTableManager(_db, _db.hymnTopics);
  $$FavoriteFoldersTableTableManager get favoriteFolders =>
      $$FavoriteFoldersTableTableManager(_db, _db.favoriteFolders);
  $$UserFavoritesTableTableManager get userFavorites =>
      $$UserFavoritesTableTableManager(_db, _db.userFavorites);
  $$SearchHistoryTableTableManager get searchHistory =>
      $$SearchHistoryTableTableManager(_db, _db.searchHistory);
  $$WorshipProgramsTableTableManager get worshipPrograms =>
      $$WorshipProgramsTableTableManager(_db, _db.worshipPrograms);
  $$ProgramItemsTableTableManager get programItems =>
      $$ProgramItemsTableTableManager(_db, _db.programItems);
  $$UserSettingsTableTableManager get userSettings =>
      $$UserSettingsTableTableManager(_db, _db.userSettings);
  $$HymnNotesTableTableManager get hymnNotes =>
      $$HymnNotesTableTableManager(_db, _db.hymnNotes);
}
