part of 'book_cubit.dart';

class FeaturedBooks {}

class FeaturedBooksInitial extends FeaturedBooks {}

class FeaturedBooksSuccess extends FeaturedBooks {
  final List<BookModel> booklist;

  FeaturedBooksSuccess({required this.booklist});
}

class FeaturedBooksLoading extends FeaturedBooks {}

class FeaturedBooksFailure extends FeaturedBooks {
  final String errmessage;

  FeaturedBooksFailure({required this.errmessage});
}
