part of 'relevant_books_cubit.dart';

class RelevantBooksState {}

class RelevantBooksInitial extends RelevantBooksState {}

class RelevantBooksLoading extends RelevantBooksState {}

class RelevantBooksSuccess extends RelevantBooksState {
  final List<BookModel> books;

  RelevantBooksSuccess({required this.books});
}

class RelevantBooksFailure extends RelevantBooksState {
  final String errmessage;

  RelevantBooksFailure({required this.errmessage});
}
