import 'package:flutter/material.dart';

class AppSpacing {
  const AppSpacing._();
  
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
  
  static const EdgeInsets screenPadding = EdgeInsets.all(lg);
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  static const EdgeInsets readerPadding = EdgeInsets.symmetric(horizontal: xl);
}

class AppTypography {
  const AppTypography._();
  
  static const String lora = 'Lora';
  static const String inter = 'Inter';
  static const String gentiumPlus = 'Gentium Plus';
  static const String merriweather = 'Merriweather';
  static const String georgia = 'Georgia';
  static const String openDyslexic = 'OpenDyslexic';
  
  static const TextStyle hymnNumberLarge = TextStyle(
    fontFamily: inter,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );
  
  static const TextStyle hymnTitle = TextStyle(
    fontFamily: lora,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
  
  static const TextStyle hymnTitleLarge = TextStyle(
    fontFamily: lora,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
  
  static const TextStyle tuneName = TextStyle(
    fontFamily: inter,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );
  
  static const TextStyle verseLabel = TextStyle(
    fontFamily: inter,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );
  
  static const TextStyle lyrics = TextStyle(
    fontFamily: lora,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );
  
  static const TextStyle lyricsLarge = TextStyle(
    fontFamily: lora,
    fontSize: 24,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );
  
  static const TextStyle body = TextStyle(
    fontFamily: inter,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  
  static const TextStyle caption = TextStyle(
    fontFamily: inter,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );
  
  static const TextStyle button = TextStyle(
    fontFamily: inter,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );
  
  static const TextStyle appName = TextStyle(
    fontFamily: inter,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );
  
  static const TextStyle introVerse = TextStyle(
    fontFamily: lora,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic,
    height: 1.5,
  );
  
  // Additional styles for app screens
  static const TextStyle headingLarge = TextStyle(
    fontFamily: inter,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
  
  static const TextStyle headingMedium = TextStyle(
    fontFamily: inter,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );
  
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: inter,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: inter,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontFamily: inter,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );
  
  static const String fontFamily = inter;
}

enum AppTheme {
  deepSpace('deep_space'),
  parchment('parchment'),
  midnight('midnight'),
  arctic('arctic'),
  system('system');
  
  final String value;
  const AppTheme(this.value);
  
  bool get isPremium => this == AppTheme.midnight || this == AppTheme.arctic || this == AppTheme.system;
}

enum LineSpacing {
  compact('compact'),
  normal('normal'),
  relaxed('relaxed'),
  spacious('spacious');
  
  final String value;
  const LineSpacing(this.value);
}

enum MidiInstrument {
  organ('organ'),
  piano('piano'),
  strings('strings'),
  choir('choir');
  
  final String value;
  const MidiInstrument(this.value);
  
  bool get isPremium => this != MidiInstrument.organ;
}