import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_info.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.similarbooks});
  final List<BookModel> similarbooks;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: similarbooks.length,
        itemBuilder: ((context, index) => GestureDetector(
              child:  BookInfo(book: similarbooks[index],),
              onTap: () {
                GoRouter.of(context).push(AppRouter.KDetailsView,extra: similarbooks[index] );
              },
            )));
    // const ListView.
  }
}
