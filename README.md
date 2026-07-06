# Matumaini

Matumaini is an advanced Seventh-day Adventist hymnal platform built with Flutter and Drift. It provides offline access to thousands of hymns across multiple languages, with four-layer search, MIDI playback, and worship program planning.

## Current State: v0.1.0-dev

### Included in this release

- **Flutter app scaffold** with Riverpod state management
- **Drift/SQLite database** with 14 tables, FTS5 trigram search, and VSS vector-search triggers
- **952 English hymns** from SDA Hymnal 1985 (689 real entries + 263 extended supplement placeholders)
- **271 Swahili hymns** (titles only; verse text pending)
- **16,554 English verse entries** imported into the local database for offline reading
- **6 bundled MIDI files** for playback MVP
- **Core screens:** Home, Search, Reader, Programs, Settings, About
- **Data pipeline:** Python acquisition scripts export JSON/SQLite assets consumed by the Flutter runtime seeder
- **GitHub Actions workflow** to build release APKs automatically when a new tag is pushed

### Build instructions

#### Prerequisites

- Flutter SDK 3.24+
- Android SDK for APK builds

#### Local build

```bash
cd matumaini
./build.sh
```

The build script will:
1. Initialize platform directories if missing
2. Run `flutter pub get`
3. Generate Drift code (`flutter pub run build_runner build --delete-conflicting-outputs`)
4. Run `flutter analyze`
5. Build and optionally launch the debug app

#### Automated APK release

To generate a downloadable APK:

```bash
git tag v0.1.0
git push origin v0.1.0
```

GitHub Actions will automatically build the release APK and attach it to the GitHub Release.

### Project structure

```
lib/
├── main.dart                          # App entry + DataSeeder bootstrap
├── core/
│   ├── constants/
│   │   ├── colors.dart                # Deep Space default theme + premium themes
│   │   ├── enums.dart                 # 16 domain enums
│   │   └── typography.dart            # Font families, text styles, spacing
│   ├── database/
│   │   ├── tables.dart                # 14 Drift tables
│   │   ├── database.dart              # AppDatabase + FTS5/VSS migration strategy
│   │   └── data_seeder.dart           # Runtime JSON→Drift importer
│   └── providers/
│       ├── database_providers.dart    # Riverpod databaseProvider
│       └── app_providers.dart         # FutureProviders + repository providers
├── models/
│   ├── hymn.dart
│   ├── hymn_verse.dart
│   └── collection.dart
├── repositories/
│   ├── hymn_repository.dart
│   └── collection_repository.dart
└── screens/
    ├── home/home_screen.dart
    ├── search/search_screen.dart
    ├── reader/reader_screen.dart
    ├── programs/programs_screen.dart
    ├── programs/program_detail_screen.py
    ├── settings/settings_screen.dart
    └── about/about_screen.dart
```

### Data pipeline

```
Platform acquisition (Python)
    ↓ export_to_flutter.py
assets/data/
    ├── english_hymns.json
    ├── english_verses.json
    ├── swahili_hymns.json
    └── midi_files.json
    ↓ runtime seeder (Dart)
Drift SQLite (on-device)
```

## Next release: v0.2.0

### Planned

- [ ] Real verse text for Swahili hymns (271 entries)
- [ ] Real verse text for Extended Supplement (696-952)
- [ ] Favorites + folders wired to UI
- [ ] RevenueCat premium integration
- [ ] Custom fonts (Lora/Inter) bundled
- [ ] MIDI piano-roll playback with `flutter_midi_pro`
- [ ] MiniLM-L6-v2 semantic search via ONNX runtime
- [ ] Intro animation (Rive)
- [ ] Production hardening: testing, accessibility, store assets

## License

Pending copyright review for bundled hymn texts and MIDI assets.
