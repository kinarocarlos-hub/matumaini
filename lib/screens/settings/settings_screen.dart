import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:matumaini/screens/about/about_screen.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          'Settings',
          style: AppTypography.headingLarge.copyWith(color: AppColors.gold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SettingsSection(
            title: 'Appearance',
            children: [
              const _SettingsItem(
                title: 'Theme',
                subtitle: 'Deep Space (Dark)',
                icon: Icons.palette_outlined,
              ),
              const _SettingsItem(
                title: 'Font Size',
                subtitle: '18px (Default)',
                icon: Icons.text_fields_outlined,
              ),
              const _SettingsItem(
                title: 'Line Spacing',
                subtitle: 'Normal',
                icon: Icons.format_line_spacing,
              ),
              const _SettingsItem(
                title: 'Reader Mode',
                subtitle: 'Reading',
                icon: Icons.menu_book_outlined,
              ),
            ],
          ),
          const SizedBox(height: 24),
          _SettingsSection(
            title: 'Playback',
            children: [
              const _SettingsItem(
                title: 'MIDI Instrument',
                subtitle: 'Organ',
                icon: Icons.piano_outlined,
              ),
              const _SettingsItem(
                title: 'Auto-scroll',
                subtitle: 'Off',
                icon: Icons.swipe,
              ),
              const _SettingsItem(
                title: 'Background Playback',
                subtitle: 'On',
                icon: Icons.play_circle_outline,
              ),
            ],
          ),
          const SizedBox(height: 24),
          _SettingsSection(
            title: 'Search',
            children: [
              const _SettingsItem(
                title: 'Default Search Mode',
                subtitle: 'Text',
                icon: Icons.search,
              ),
              const _SettingsItem(
                title: 'Language Filter',
                subtitle: 'All Languages',
                icon: Icons.language,
              ),
            ],
          ),
          const SizedBox(height: 24),
          _SettingsSection(
            title: 'About',
            children: [
              _SettingsItem(
                title: 'About Matumaini',
                subtitle: 'Version 0.1.0-dev',
                icon: Icons.info_outline,
                isNavigable: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutScreen()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SettingsSection({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 8),
          child: Text(
            title,
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.gold,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.gold.withValues(alpha: 0.2)),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isNavigable;
  final VoidCallback? onTap;

  const _SettingsItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.isNavigable = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
      leading: Icon(icon, color: AppColors.gold, size: 24),
      title: Text(title, style: AppTypography.bodyMedium),
      subtitle: Text(subtitle, style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary)),
      trailing: isNavigable
          ? Icon(Icons.chevron_right, color: AppColors.textSecondary, size: 20)
          : null,
          onTap: onTap ??
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$title settings coming in next release'),
                    backgroundColor: AppColors.gold,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
        ),
      );
  }
}
