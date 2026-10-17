import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/app_colors.dart';
import 'features/home/screens/home_screen.dart';
import 'features/quran/screens/quran_audio_screen.dart';
import 'features/duas/screens/duas_screen.dart';
import 'features/downloads/screens/downloads_screen.dart';

class NoorSaathiApp extends StatelessWidget {
  const NoorSaathiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noor Saathi',
      theme: AppTheme.lightTheme,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    QuranAudioScreen(),
    DuasScreen(),
    DownloadsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Quran'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Duayein'),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Downloads'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(AppColors.kPrimary),
        unselectedItemColor: const Color(AppColors.kText),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
