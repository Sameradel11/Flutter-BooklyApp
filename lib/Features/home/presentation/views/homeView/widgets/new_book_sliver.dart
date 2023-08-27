import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_info.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class NewBooksSliver extends StatelessWidget {
  const NewBooksSliver({super.key, required this.booklist});
  final List<BookModel> booklist;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return booklist[index].volumeInfo.imageLinks == null
              ? const SizedBox()
              : GestureDetector(
                  onTap: () => GoRouter.of(context)
                      .push(AppRouter.KDetailsView, extra: booklist[index]),
                  child: BookInfo(
                    book: booklist[index],
                  ));
        },
        childCount: booklist.length,
      ),
    );
  }
}
