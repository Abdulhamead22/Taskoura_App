import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio);

  static Dio createDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.mohammedzomlot.dev/',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }
}