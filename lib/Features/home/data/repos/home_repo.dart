import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/Failure/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(
      {required String subject});
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks(
      {required String subject});
  Future<Either<Failure, List<BookModel>>> fetchRelevantBooks(
      {required String subject});
}
