import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;

  Failure({required this.errmessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errmessage});

  factory ServerFailure.fromDioException(DioException dio) {
    switch (dio.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errmessage: "Connection Timeout");

      case DioExceptionType.sendTimeout:
        return ServerFailure(errmessage: "Send Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errmessage: "Recieve Timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure(errmessage: "Bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dio.response!.statusCode!, dio.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(errmessage: "Connection Cancelled");

      case DioExceptionType.connectionError:
        return ServerFailure(errmessage: "Connection Error");

      case DioExceptionType.unknown:
        if (dio.message!.contains("SocketException")) {
          return ServerFailure(errmessage: "There is no Internet connection");
        }
        return ServerFailure(errmessage: "UnExpected Error");
    }
  }
  factory ServerFailure.fromResponse(
      int statuscode, Map<String, dynamic> response) {
    if (statuscode == 404) {
      return ServerFailure(errmessage: "Error not found");
    } else if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(errmessage: response['error']['message']);
    } else if (statuscode == 500) {
      return ServerFailure(
          errmessage: "Internal Server error please try again later");
    } else {
      return ServerFailure(
          errmessage: "Oops! there is an error, please try again later");
    }
  }
}
