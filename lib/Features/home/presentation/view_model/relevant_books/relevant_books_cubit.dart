import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';

part 'relevant_books_state.dart';

class RelevantBooksCubit extends Cubit<RelevantBooksState> {
  RelevantBooksCubit() : super(RelevantBooksInitial());
  bool isloading = true;
  fetchrevantbooks({required String category}) async {
    emit(RelevantBooksLoading());
    var response = await HomeRepoImp().fetchRelevantBooks(subject: category);
    response.fold(
        (failure) => emit(RelevantBooksFailure(errmessage: failure.errmessage)),
        (books) => emit(RelevantBooksSuccess(books: books)));
  }
}
