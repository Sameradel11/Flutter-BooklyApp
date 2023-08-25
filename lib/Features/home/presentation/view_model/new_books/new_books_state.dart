part of 'new_books_cubit.dart';

class NewBooksState {}

class NewBooksInitial extends NewBooksState {}

class NewBooksLoading extends NewBooksState {}

class NewBooksSuccess extends NewBooksState {
  final List<BookModel> bookslist;

  NewBooksSuccess({required this.bookslist});
}

class NewBooksFailure extends NewBooksState {
  final String errmessage;

  NewBooksFailure({required this.errmessage});
}
