import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBookCubit() : super(FeaturedBooksStates());
  bool isloading = true;

  static getFeaturedBooks(context) {
    return BlocProvider.of<FeaturedBookCubit>(context);
  }

  fetchFeaturedBooks({required String subject}) async {
    emit(FeaturedBooksLoading());
    var result = await HomeRepoImp().fetchNewestBooks(subject: subject);
    result.fold((failure) {
      emit(FeaturedBooksFailure(errmessage: failure.errmessage));
    }, (books) {
      emit(FeaturedBooksSuccess(booklist: books));
    });
  }
}
