import 'package:core/src/utils/end_points.dart';
import 'package:dio/dio.dart';
import 'dart:developer' as developer;
import 'package:injectable/injectable.dart';

@module
abstract class DioHelper {
  @singleton
  Dio init(){
    Dio dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.BASE_URL,
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type' :'application/json',
        }
      ),
    );
    dio.interceptors.add(ApiInterceptors());
    return dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    developer.log('REQUEST[${options.method}] => PATH: ${options.path}');
    developer.log('REQUEST[${options.toString()}]');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    developer.log(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    developer.log('RESPONSE[${response.toString()}]');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    developer.log(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    developer.log('ERROR[${err.response?.toString()}]');
    return super.onError(err, handler);
  }
}