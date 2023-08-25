import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/Failure/Failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  ApiServices apiclass=ApiServices();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(
      {required String subject}) async {
    try {
      Map<String, dynamic> response = await apiclass.get(
          endpoints:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:$subject");
      List<dynamic> bookitems = response['items'];
      List<BookModel> bookmodels = [];
      for (int i = 0; i < bookitems.length; i++) {
        bookmodels.add(BookModel.fromJsonData(bookitems[i]));
        print(bookmodels[i]);
        print("*" * 59);
      }

      print("${bookmodels.length} ${bookitems.length}");
      return right(bookmodels);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errmessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks(
      {required String subject}) async {
    Map<String, dynamic> response = await apiclass.get(
        endpoints: "volumes?Filtering=free-ebooks&q=$subject");
    List<BookModel> books = [];
    for (dynamic item in response['items']) {
      books.add(BookModel.fromJsonData(item as Map<String,dynamic>));
    }
    return right(books);
  }
}
