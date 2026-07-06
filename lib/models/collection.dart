import 'package:equatable/equatable.dart';

class Collection extends Equatable {
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

  const Collection({
    required this.id,
    required this.code,
    required this.name,
    this.nameNative,
    required this.languageCode,
    required this.languageNameEnglish,
    required this.languageNameNative,
    this.fontFamily = 'lora',
    this.specialCharacters,
    required this.tier,
    this.totalSongs = 0,
    this.isBundled = false,
    this.requiresPremium = false,
    this.downloadSizeMb,
    this.isDownloaded = false,
    this.sourceOrganization,
    this.licenseType = 'PENDING',
    this.licenseExpiry,
    required this.displayOrder,
  });

  @override
  List<Object?> get props => [
    id, code, name, nameNative, languageCode,
    languageNameEnglish, languageNameNative,
    fontFamily, specialCharacters, tier, totalSongs,
    isBundled, requiresPremium, downloadSizeMb,
    isDownloaded, sourceOrganization, licenseType,
    licenseExpiry, displayOrder,
  ];
}
