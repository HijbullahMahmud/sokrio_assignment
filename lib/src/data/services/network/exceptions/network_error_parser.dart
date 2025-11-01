import 'package:dio/dio.dart';

import 'failure.dart';

/// A unified class that converts DioException or any other exception
/// into a standardized [Failure] model used throughout the app.
class NetworkErrorParser {
  static Failure parse(dynamic error) {
    if (error is DioException) {
      return _fromDioException(error);
    } else if (error is Failure) {
      // Already parsed before
      return error;
    } else {
      return const Unexpected("Unknown error occurred");
    }
  }

  static Failure _fromDioException(DioException e) {
    final response = e.response;

    if (response != null) {
      final statusCode = response.statusCode ?? 0;
      final errorData = response.data;

      switch (statusCode) {
        case 400:
          return BadRequest(errorData);
        case 401:
          return Unauthorized(errorData);
        case 403:
          return Forbidden(errorData);
        case 404:
          return NotFound(errorData);
        case 405:
          return MethodNotAllowed(errorData);
        case 406:
          return NotAcceptable(errorData);
        case 408:
          return RequestTimeout(errorData);
        case 409:
          return Conflict(errorData);
        case 410:
          return Gone(errorData);
        case 411:
          return LengthRequired(errorData);
        case 412:
          return PreconditionFailed(errorData);
        case 413:
          return PayloadTooLarge(errorData);
        case 414:
          return URITooLong(errorData);
        case 415:
          return UnsupportedMediaType(errorData);
        case 416:
          return RangeNotSatisfiable(errorData);
        case 417:
          return ExpectationFailed(errorData);
        case 422:
          return UnprocessableEntity(errorData);
        case 429:
          return TooManyRequests(errorData);
        case 500:
          return InternalServerError(errorData);
        case 501:
          return NotImplemented(errorData);
        case 502:
          return BadGateway(errorData);
        case 503:
          return ServiceUnavailable(errorData);
        case 504:
          return GatewayTimeout(errorData);
        default:
          return Unexpected(errorData);
      }
    } else {
      // No response → usually connection issues, timeout, etc.
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return const RequestTimeout("Connection timed out");
        case DioExceptionType.connectionError:
          return const ServiceUnavailable("No Internet connection");
        case DioExceptionType.cancel:
          return const Unexpected("Request cancelled");
        default:
          return const Unexpected("Unexpected network error");
      }
    }
  }
}
