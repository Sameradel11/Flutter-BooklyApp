import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view_model/cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_cover.dart'; // Make sure to import the correct package

class BookCoversListView extends StatelessWidget {
  const BookCoversListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BookModel> booklist = [];
    return BlocConsumer<FeaturedBookCubit, FeaturedBooksStates>(
      listener: (context, state) {
        if (state is FeaturedBooksLoading) {
          BlocProvider.of<FeaturedBookCubit>(context).isloading = true;
        } else if (state is FeaturedBooksSuccess) {
          booklist = state.booklist;
          BlocProvider.of<FeaturedBookCubit>(context).isloading = false;
        } else if (state is FeaturedBooksFailure) {
          BlocProvider.of<FeaturedBookCubit>(context).isloading = true;
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errmessage)));
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child:  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        booklist.length, // Use the length of your image list
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 0.6,
                        child:  BookCover(
                                imagelink: booklist[index]
                                    .volumeInfo!
                                    .imageLinks!
                                    .thumbnail!),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
