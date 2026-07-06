# Matumaini - SDA Hymnal App

## Stage 1 - Foundation (COMPLETE)

### Project Structure
```
lib/
├── core/
│   ├── database/
│   │   ├── database.dart      # Drift database setup with migrations
│   │   └── tables.dart        # All table definitions
│   ├── constants/
│   │   ├── colors.dart        # All theme colors as Color constants
│   │   ├── typography.dart    # Fonts, sizes, styles as Dart constants
│   │   └── enums.dart         # All enums for occasion, tempo, etc.
│   └── providers/
│       └── database_providers.dart  # Riverpod providers for all tables
├── features/
│   ├── hymn_reader/
│   ├── search/
│   ├── worship_program/
│   ├── favorites/
│   └── settings/
└── main.dart
```

### Design Decisions & Assumptions

1. **Enum Storage**: Occasion, TempoCategory, CopyrightStatus, VerseType, RelationshipType, and ItemType are stored as TEXT in SQLite with validation in Dart layer. This allows for easy querying and extensibility.

2. **UserSettings.id**: Uses `clientDefault(() => 1)` with a single row pattern. Application must ensure only one settings row exists.

3. **HymnNumber Nullable**: Indigenous songs without numbers have `hymnNumber = null`.

4. **Full Text Search**: Drift's FTS5 support requires virtual tables or triggers. The `lyrics_normalized` field stores pre-normalized text (lowercase, diacritics removed) for search matching.

5. **Color Imports**: Uses `dart:ui` directly for Color class since the constants are pure data.

6. **Font Assets**: Fonts referenced in pubspec.yaml but actual font files must be downloaded and placed in assets/fonts/.

7. **MIDI Assets**: `midi_asset_path` stores relative path within `assets/midi/` directory.

8. **activeCollectionIds**: JSON array stored as TEXT — parsed on read, serialized on write.

9. **Theme System**: SYSTEM theme follows OS dark/light mode — handled in UI layer, not database.

8. **Collection Codes**: 
   - SDA_HYMNAL
   - SDA_EXTENDED  
   - NYIMBO_ZA_KRISTO
   - KISII_SDA
   - KALENJIN_SDA
   - DHOLUO_SDA

### Database Schema Summary

| Table | Primary Key | Foreign Keys | Notes |
|-------|-------------|--------------|-------|
| collections | id (auto-increment) | - | 6 predefined collections |
| hymns | id (auto-increment) | collection_id → collections | INDEX on (collection_id, hymn_number), tune_name |
| hymn_verses | id (auto-increment) | hymn_id → hymns | INDEX on (hymn_id, verse_number) |
| hymn_cross_reference | id (auto-increment) | hymn_id, related_hymn_id → hymns | Links translations/same_tune/thematic |
| topical_index | id (auto-increment) | - | Categories like Adoration, Faith, Grace |
| hymn_topics | (hymn_id, topic_id) compound PK | Both → respective tables | Many-to-many relation |
| midi_tunes | id (auto-increment) | - | Unique tune_name, 400-500 unique tunes |
| user_settings | id (always 1) | - | Single row, user preferences |
| user_favorites | hymn_id (PK) | hymn_id → hymns | Optional folder for organization |
| worship_programs | id (auto-increment) | - | Program metadata |
| program_items | id (auto-increment) | program_id → worship_programs, hymn_id → hymns | Items in programs |

### TODO - Remaining Stages
- [ ] Stage 2: Data import (SDA Hymnal 695 entries, MIDI mappings)
- [ ] Stage 3: Core hymn reader with MIDI playback
- [ ] Stage 4: Search and navigation
- [ ] Stage 5: Freemium integration (RevenueCat)
- [ ] Stage 6: Kenyan language collections
- [ ] Stage 7: Worship program builder
- [ ] Stage 8: Home screen + polish
- [ ] Stage 9: Intro animation (Rive)
- [ ] Stage 10: Production (assets, testing, store submission)