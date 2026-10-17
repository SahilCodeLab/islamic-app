import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class DuasScreen extends StatelessWidget {
  const DuasScreen({super.key});

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
        title: const Text('Duayein'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: _surface,
            child: ListTile(
              title: const Text('Ayat al-Kursi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              subtitle: const Text('??????? ?? ??????? ?????? ???? ...'),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            color: _surface,
            child: ListTile(
              title: const Text('Surah Al-Fatiha', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              subtitle: const Text('?????? ??????? ???????????? ?????????? ...'),
            ),
          ),
        ],
      ),
    );
  }
}
