import 'package:dio/dio.dart';

class DioHandler {


  final Dio dio;

  DioHandler(this.dio);

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    return await dio.get(path, queryParameters: query);
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    return await dio.post(path, data: data);
  }

  Future<Response> delete(String path) async {
    return await dio.delete(path);
  }
}
