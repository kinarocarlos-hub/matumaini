import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/database/database.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});
