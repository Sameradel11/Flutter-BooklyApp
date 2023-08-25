import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view_model/cubit/book_cubit.dart';
import 'package:bookly/Features/home/presentation/view_model/new_books/new_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_info.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/style.dart';
import 'book_covers_listview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<BookModel>? booklist = [];

    return BlocConsumer<NewBooksCubit, NewBooksState>(
      listener: (context, state) {
        if (state is NewBooksLoading) {
          BlocProvider.of<NewBooksCubit>(context).isloading = true;
        } else if (state is NewBooksSuccess) {
          booklist = state.bookslist;
          BlocProvider.of<NewBooksCubit>(context).isloading = false;
        } else if (state is NewBooksFailure) {
          BlocProvider.of<NewBooksCubit>(context).isloading = true;
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errmessage)));
        }
      },
      builder: (context, state) {
        return CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
                child: Column(
              children: [
                SizedBox(height: 50),
                CustomAppBar(),
                BookCoversListView(),
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "New Books",
                      style: Style.textstyle18,
                    ),
                  ),
                )
              ],
            )),
            BlocProvider.of<NewBooksCubit>(context).isloading
                ? const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()))
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return GestureDetector(
                            onTap: () => GoRouter.of(context)
                                .push(AppRouter.KDetailsView),
                            child: BookInfo(
                              book: booklist![index],
                            ));
                      },
                      // 40 list items
                      childCount: booklist!.length,
                    ),
                  ),
          ],
        );
      },
    );
  }
}
