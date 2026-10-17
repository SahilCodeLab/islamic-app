import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../quran/screens/quran_audio_screen.dart';
import '../../duas/screens/duas_screen.dart';
import '../../downloads/screens/downloads_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.kBackground),
      appBar: AppBar(
        backgroundColor: Color(AppColors.kPrimary),
        title: const Text('Noor Saathi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _largeButton(context, Icons.music_note, 'Quran & Audio', QuranAudioScreen()),
            const SizedBox(height: 20),
            _largeButton(context, Icons.book, 'Duayein', const DuasScreen()),
            const SizedBox(height: 20),
            _largeButton(context, Icons.download, 'Downloads', const DownloadsScreen()),
          ],
        ),
      ),
    );
  }

  Widget _largeButton(BuildContext context, IconData icon, String label, Widget destination) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(AppColors.kPrimary),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        icon: Icon(icon, size: 30),
        label: Text(label, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => destination)),
      ),
    );
  }
}
