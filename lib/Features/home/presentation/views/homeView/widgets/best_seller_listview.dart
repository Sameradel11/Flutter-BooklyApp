import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_info.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) => GestureDetector(
              child: const BookInfo(),
              onTap: () {
                GoRouter.of(context).push(AppRouter.KDetailsView);
              },
            )));
    // const ListView.
  }
}
