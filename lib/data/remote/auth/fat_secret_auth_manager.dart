import 'package:dio/dio.dart';
import '../../../core/constants/api_constants.dart';
import '../../models/fat_secret_models.dart';


class FatSecretAuthManager {

  static final FatSecretAuthManager _instance = FatSecretAuthManager._internal();
  factory FatSecretAuthManager() => _instance;
  FatSecretAuthManager._internal();

  String? _accessToken;
  DateTime? _tokenExpirationDate;

  final Dio _dio = Dio();

  Future<String> getValidToken() async {
    if (_accessToken != null &&
    _tokenExpirationDate != null &&
        DateTime.now().isBefore(_tokenExpirationDate!)){
      return _accessToken!;
    }
    return await _fetchNewToken();
  }

  Future<String> _fetchNewToken() async {
    try {
      final data = {
        'grant_type': 'client_credentials',
        'client_id': ApiConstants.clientId,
        'client_secret': ApiConstants.clientSecret,
        'scope': 'premier',
      };

      final response = await _dio.post(
        ApiConstants.tokenUrl,
        data: data,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          validateStatus: (status) => status! < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('OAuth failed: ${response.statusCode} - ${response.data}');
      }

      final tokenResponse = FatSecretToken.fromJson(response.data);

      _accessToken = tokenResponse.accessToken;
      _tokenExpirationDate = DateTime.now().add(
          Duration(seconds: tokenResponse.expiresIn - 60),
      );
      return _accessToken!;
    } catch (e) {
      rethrow;
    }
  }
  Future<void> refreshToken() async {
    _accessToken = null;
        _tokenExpirationDate = null;
        await getValidToken();
  }
}