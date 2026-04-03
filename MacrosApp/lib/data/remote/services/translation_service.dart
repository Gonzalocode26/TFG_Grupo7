import 'package:dio/dio.dart';

class TranslationService {
  final Dio _dio = Dio();
  final String _apiKey = 'cc078566-6fcb-4e34-8e83-92ee53f832ad:fx';
  final String _baseUrl = 'https://api-free.deepl.com/v2/translate';

  Future<String> translate(String text, String targetLang) async {
    try {
      final response = await _dio.post(
        _baseUrl,
        options: Options(
          headers: {
            'Authorization': 'DeepL-Auth-Key $_apiKey',
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'text': [text],
          'target_lang': targetLang.toUpperCase(),
        },
      );

      if (response.statusCode == 200) {
        return response.data['translations'][0]['text'];
      }
      return text;
    } catch (e) {
      print('❌ Error de traducción: $e');
      return text;
    }
  }
}