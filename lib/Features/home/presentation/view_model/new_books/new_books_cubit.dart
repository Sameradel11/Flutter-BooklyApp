import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  bool isloading = true;
  final ApiServices apiclas = ApiServices();
  NewBooksCubit() : super(NewBooksInitial());
  static getnewcubit(context) {
    return BlocProvider.of<NewBooksCubit>(context);
  }

  fetchNewBooks({required String subject}) async {
    emit(NewBooksLoading());
    var result = await HomeRepoImp().fetchNewestBooks(subject: subject);
    result.fold((failue) {
      emit(NewBooksFailure(errmessage: failue.errmessage));
    }, (books) {
      emit(NewBooksSuccess(bookslist: books));
    });
  }
}
