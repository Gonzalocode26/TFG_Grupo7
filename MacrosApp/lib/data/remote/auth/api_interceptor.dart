import 'package:dio/dio.dart';
import 'fat_secret_auth_manager.dart';


class ApiInterceptor extends Interceptor{
  final FatSecretAuthManager _authManager = FatSecretAuthManager();

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    try {
      final token = await _authManager.getValidToken();

      options.headers['Authorization'] = 'Bearer $token';
      handler.next(options);
    } catch(e) {
      handler.reject(
        DioException(
        requestOptions: options,
          error: 'Authentication failed: $e',
        ),
      );
    }
  }
}