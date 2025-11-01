import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sokrio_assignment/src/core/logger/log.dart';
import 'package:sokrio_assignment/src/data/services/network/exceptions/network_error_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'exceptions/failure.dart';

class NetworkService {
  final String baseUrl;
  final Ref ref;
  late final Dio _dio;

  factory NetworkService({required Ref ref, required String baseUrl}) {
    return NetworkService._internal(ref: ref, baseUrl: baseUrl);
  }

  NetworkService._internal({required this.ref, required this.baseUrl}) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {'Accept': 'application/json'},
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
          // Attach token from Riverpod TokenNotifier
          // final token = ref.read(tokenProvider);
          // if (token != null && token.isNotEmpty) {
          //   options.headers['Authorization'] = 'Bearer $token';
          // }
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
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
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
