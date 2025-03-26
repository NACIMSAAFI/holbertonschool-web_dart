import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> printRmCharacters() async {
  try {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final characters = data['results'] as List;

      for (final character in characters) {
        print(character['name']);
      }

      return 'Success';
    } else {
      throw Exception('Failed to load characters: ${response.statusCode}');
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
