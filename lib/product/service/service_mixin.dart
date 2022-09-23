import 'package:dio/dio.dart';

mixin ProjectDioMixin  {
  final service=Dio(BaseOptions(baseUrl: 'https://laravel-test-ecommerce-application.ferisoftdemo.com/api'));
  
}