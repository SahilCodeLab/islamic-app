// Model class for a Quran Ayah fetched from alquran.cloud
class Ayah {
  final int number;
  final int numberInSurah;
  final String text; // Arabic text
  final String? translation;
  final String surahName;

  Ayah({
    required this.number,
    required this.numberInSurah,
    required this.text,
    required this.surahName,
    this.translation,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) {
    final ayah = json['ayah'] as Map<String, dynamic>;
    final surah = ayah['surah'] as Map<String, dynamic>;
    return Ayah(
      number: ayah['number'] as int,
      numberInSurah: ayah['numberInSurah'] as int,
      text: ayah['text'] as String,
      surahName: surah['englishName'] as String,
      translation: ayah['text'] as String?, // placeholder – real translation may be separate
    );
  }
}
