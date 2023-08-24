import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';

part 'book_state.dart';

class BookCubit extends Cubit<FeaturedBooks> {
  BookCubit() : super(FeaturedBooks());

  fetchNewBooks({required String subject}) async {
    emit(FeaturedBooksLoading());
    var result = await HomeRepoImp().fetchNewestBooks(subject: subject);

    result.fold((failure) {
      emit(FeaturedBooksFailure(errmessage: failure.errmessage));
    }, (books) {
      emit(FeaturedBooksSuccess(booklist: books));
    });

  
  }
}
