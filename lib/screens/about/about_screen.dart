import 'package:flutter/material.dart';
import 'package:matumaini/core/constants/colors.dart';
import 'package:matumaini/core/constants/typography.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          'About Matumaini',
          style: AppTypography.headingLarge.copyWith(color: AppColors.gold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.gold.withOpacity(0.15),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.gold.withOpacity(0.4), width: 2),
              ),
              child: Icon(Icons.music_note, size: 64, color: AppColors.gold),
            ),
            const SizedBox(height: 24),
            Text(
              'Matumaini',
              style: AppTypography.headingLarge.copyWith(
                fontSize: 32,
                color: AppColors.gold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Version 0.1.0-dev',
              style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.gold.withOpacity(0.2)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About This App',
                    style: AppTypography.headingMedium.copyWith(color: AppColors.gold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Matumaini is an advanced Seventh-day Adventist hymnal platform built with Flutter and Drift. It provides offline access to thousands of hymns across multiple languages, with four-layer search, MIDI playback, and worship program planning.',
                    style: AppTypography.bodyMedium.copyWith(height: 1.6),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Data Sources',
                    style: AppTypography.bodyMedium.copyWith(color: AppColors.gold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• SDA Hymnal 1985 (English)\n• Nyimbo za Kristo (Swahili)\n• Extended Supplement (placeholder)\n• MIDI assets from public domain sources',
                    style: AppTypography.bodyMedium.copyWith(height: 1.5),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _SocialButton(
                  icon: Icons.code,
                  label: 'Source',
                  onTap: () => _launchUrl('https://github.com/kinarocarlos-hub/matumaini'),
                ),
                _SocialButton(
                  icon: Icons.bug_report,
                  label: 'Issues',
                  onTap: () => _launchUrl('https://github.com/kinarocarlos-hub/matumaini/issues'),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'Built with ❤️ for the SDA community',
              style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.gold.withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.gold, size: 20),
            const SizedBox(width: 8),
            Text(label, style: AppTypography.bodyMedium),
          ],
        ),
      ),
    );
  }
}
