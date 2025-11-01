import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sokrio_assignment/src/core/constants/api_endpoints.dart';
import 'package:sokrio_assignment/src/core/logger/log.dart';
import 'package:sokrio_assignment/src/data/services/network/exceptions/network_error_parser.dart';

import 'exceptions/failure.dart';

class NetworkService {
  late final Dio _dio;

  factory NetworkService() {
    return NetworkService._internal();
  }

  NetworkService._internal() {
    final options = BaseOptions(
      baseUrl: ApiEndpoints.base,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {'Accept': 'application/json', 'x-api-key': ApiEndpoints.apiKey},
    );

    _dio = Dio(options);

    // Logging only in dev environment
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (o) => log(o.toString(), name: "DIO"),
        ),
      );
    }

    // Token & error interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          handler.next(options);
        },
        onError: (error, handler) {
          Log.info('Dio error: ${error.message}');
          handler.next(error);
        },
      ),
    );
  }

  Dio get dio => _dio;

  // ============================
  // Common request methods
  // ============================

  Future<Either<Failure, Response>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return Right(response);
    } catch (e) {
      final failure = NetworkErrorParser.parse(e);
      return Left(failure);
    }
  }

  Future<Either<Failure, Response>> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return Right(response);
    } catch (e) {
      final failure = NetworkErrorParser.parse(e);
      return Left(failure);
    }
  }

  Future<Either<Failure, Response>> put(
    String path, {
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(path, data: data, options: options);
      return Right(response);
    } catch (e) {
      final failure = NetworkErrorParser.parse(e);
      return Left(failure);
    }
  }

  Future<Either<Failure, Response>> delete(
    String path, {
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete(path, data: data, options: options);
      return Right(response);
    } catch (e) {
      final failure = NetworkErrorParser.parse(e);
      return Left(failure);
    }
  }
}
