import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/database/database.dart';

// This provider is always overridden in main() with an already-initialised
// AppDatabase instance. The throw here is a safety net — it should never
// be reached in production.
final databaseProvider = Provider<AppDatabase>((ref) {
  throw StateError(
    'databaseProvider was not overridden. '
    'Ensure ProviderScope overrides databaseProvider with the initialised AppDatabase.',
  );
});
