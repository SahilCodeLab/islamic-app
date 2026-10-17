import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/ayah.dart';

class AyahRepository {
  static const String _endpoint = 'https://api.alquran.cloud/v1/ayah/random';

  Future<Ayah> fetchRandomAyah() async {
    final response = await http.get(Uri.parse(_endpoint));
    if (response.statusCode != 200) {
      throw Exception('Failed to load random ayah (status ${response.statusCode})');
    }
    final Map<String, dynamic> json = jsonDecode(response.body);
    if (json['data'] == null) {
      throw Exception('Unexpected API response structure');
    }
    return Ayah.fromJson(json['data'] as Map<String, dynamic>);
  }
}
