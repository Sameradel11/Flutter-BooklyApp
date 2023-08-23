import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_info.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return CustomScrollView(
      // defaults to false

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
                  "Best Seller",
                  style: Style.textstyle18,
                ),
              ),
            )
          ],
        )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.KDetailsView),
                  child: const BookInfo());
            },
            // 40 list items
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
