import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityInterceptorsCastException implements Exception {
  final message =
      'No internet connection, please check internet connection and try again';

  @override
  String toString() => message;
}

class CustomInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnected = connectivityResult != ConnectivityResult.none;
    if (isConnected) {
      debugPrint(
          "REQUEST [${' '}${options.method}${' '}] ${' '} URL: ${options.baseUrl + options.path} ${options.data}");
      print("${options.data}");
      return super.onRequest(options, handler);
    } else
      throw ConnectivityInterceptorsCastException();
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnected = connectivityResult != ConnectivityResult.none;
    if (isConnected) {
      debugPrint(
          "RESPONSE [${' '}${response.statusCode}${' '}]${'\n'}${response.data}");
      return super.onResponse(response, handler);
    } else
      throw ConnectivityInterceptorsCastException();
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnected = connectivityResult != ConnectivityResult.none;
    if (isConnected) {
      debugPrint(
          "ERROR [${' '}${err.response?.statusCode}${' '}]${'\n'} error meesage =>"
          " ${err.response.toString()} ${'\n'} error header => ");
      return super.onError(err, handler);
    } else
      throw ConnectivityInterceptorsCastException();
  }
}
