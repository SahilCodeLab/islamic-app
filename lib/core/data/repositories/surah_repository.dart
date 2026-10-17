import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/surah.dart';

class SurahRepository {
  static const String _endpoint = 'https://api.alquran.cloud/v1/surah';

  Future<List<Surah>> fetchSurahs() async {
    final response = await http.get(Uri.parse(_endpoint));
    if (response.statusCode != 200) {
      throw Exception('Failed to load surahs (status ${response.statusCode})');
    }
    final Map<String, dynamic> json = jsonDecode(response.body);
    if (json['data'] == null) {
      throw Exception('Unexpected response structure');
    }
    final List<dynamic> list = json['data'] as List<dynamic>;
    return list.map((e) => Surah.fromJson(e as Map<String, dynamic>)).toList();
  }
}
