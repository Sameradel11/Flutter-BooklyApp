import 'package:dio/dio.dart';

class ApiServices {
  final String baseurl = "https://www.googleapis.com/books/v1/";
  final Dio dio = Dio();

  Future<Map<String, dynamic>> get({required String endpoints}) async {
    var response = await dio.get('$baseurl$endpoints');
    print("$baseurl$endpoints");
    return response.data;
  }
}
