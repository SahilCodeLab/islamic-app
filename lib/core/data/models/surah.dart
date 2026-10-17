import 'package:hive/hive.dart';

part 'surah.g.dart';

@HiveType(typeId: 1)
class Surah {
  @HiveField(0)
  final int number;

  @HiveField(1)
  final String name; // Arabic name

  @HiveField(2)
  final String englishName;

  @HiveField(3)
  final int numberOfAyahs;

  @HiveField(4)
  final String revelationType; // "Meccan" or "Medinan"

  Surah({
    required this.number,
    required this.name,
    required this.englishName,
    required this.numberOfAyahs,
    required this.revelationType,
  });

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json['number'] as int,
        name: json['name'] as String,
        englishName: json['englishName'] as String,
        numberOfAyahs: json['numberOfAyahs'] as int,
        revelationType: json['revelationType'] as String,
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'numberOfAyahs': numberOfAyahs,
        'revelationType': revelationType,
      };
}
