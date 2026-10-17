import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  static const _primary = Color(AppColors.kPrimary);
  static const _background = Color(AppColors.kBackground);
  static const _surface = Color(AppColors.kSurface);
  static const _text = Color(AppColors.kText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        backgroundColor: _primary,
        title: const Text('Downloads'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          // Placeholder content
          Card(
            child: ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Sample File 1'),
            ),
          ),
          SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Sample File 2'),
            ),
          ),
        ],
      ),
    );
  }
}
