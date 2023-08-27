import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_cover.dart';
import 'package:bookly/const.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.similarbooks});
  final List<BookModel> similarbooks;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(5),
        itemCount: similarbooks.length,
        itemBuilder: ((context, index) => GestureDetector(
              child: AspectRatio(
                aspectRatio: Kcoveraspectration,
                child: similarbooks[index].volumeInfo.imageLinks == null
                    ? const SizedBox(
                        width: 0,
                      )
                    : BookCover(
                        imagelink: similarbooks[index]
                            .volumeInfo
                            .imageLinks!
                            .thumbnail!),
              ),
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.KDetailsView, extra: similarbooks[index]);
              },
            )),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
    // const ListView.
  }
}
