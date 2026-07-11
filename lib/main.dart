import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/core/database/database.dart';
import 'package:matumaini/core/database/data_seeder.dart';
import 'package:matumaini/core/providers/database_providers.dart';
import 'package:matumaini/screens/main_shell.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    final db = AppDatabase();
    await db.onCreate();
    final seeder = DataSeeder(db);
    await seeder.seedIfEmpty();
    runApp(ProviderScope(overrides: [
      databaseProvider.overrideWithValue(db),
    ], child: const MatumainiApp()));
  } catch (e, stack) {
    debugPrint('Fatal startup error: $e\n$stack');
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0A0F1E),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Startup error:\n$e',
              style: const TextStyle(color: Colors.redAccent, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ));
  }
}

class MatumainiApp extends ConsumerWidget {
  const MatumainiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Matumaini - SDA Hymnal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.gold,
          secondary: AppColors.gold,
          surface: AppColors.surface,
          background: AppColors.background,
          error: AppColors.error,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: AppColors.textPrimary,
          onBackground: AppColors.textPrimary,
          onError: Colors.white,
          outline: AppColors.gold,
        ),
        textTheme: TextTheme(
          displayLarge: AppTypography.headingLarge,
          displayMedium: AppTypography.headingMedium,
          bodyLarge: AppTypography.bodyLarge,
          bodyMedium: AppTypography.bodyMedium,
          bodySmall: AppTypography.bodySmall,
        ),
        fontFamily: AppTypography.fontFamily,
        useMaterial3: true,
      ),
      home: const MainShell(),
    );
  }
}
