part of 'book_cubit.dart';

class FeaturedBooksStates {}

class FeaturedBooksInitial extends FeaturedBooksStates {}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> booklist;

  FeaturedBooksSuccess({required this.booklist});
}

class FeaturedBooksLoading extends FeaturedBooksStates {}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errmessage;

  FeaturedBooksFailure({required this.errmessage});
}
