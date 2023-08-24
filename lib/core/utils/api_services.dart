import 'package:dio/dio.dart';

class ApiServices {
  final String baseurl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  ApiServices({required this.dio});
  Future<Map<String, dynamic>> get({required String endpoints}) async {
    var response = await dio.get('$baseurl$endpoints');
    print("Response is $response");
    print("but the data only in that response is ${response.data}");
    return response.data;
  }
}
