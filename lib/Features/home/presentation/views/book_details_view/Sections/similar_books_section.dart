import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view_model/relevant_books/relevant_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/best_seller_listview.dart';
import 'package:bookly/core/utils/methods.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    List<BookModel> books = [];
    return BlocProvider(
      create: (context) =>
          RelevantBooksCubit()..fetchrevantbooks(category: category),
      child: BlocConsumer<RelevantBooksCubit, RelevantBooksState>(
        listener: (context, state) {
          if (state is RelevantBooksLoading) {
            BlocProvider.of<RelevantBooksCubit>(context).isloading = true;
          } else if (state is RelevantBooksSuccess) {
            BlocProvider.of<RelevantBooksCubit>(context).isloading = false;
            books = state.books;
          } else if (state is RelevantBooksFailure) {
            showSnackbar(state, context);
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "You can also like",
                  style:
                      Style.textstyle20.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              BestSellerListView(
                similarbooks: books,
              ),
            ],
          );
        },
      ),
    );
  }
}
