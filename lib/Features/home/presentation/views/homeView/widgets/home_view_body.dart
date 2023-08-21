import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/style.dart';
import 'best_seller_listview.dart';
import 'book_covers_listview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                SizedBox(height: 50),
                CustomAppBar(),
                BookCoversListView(),
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 20, bottom: 20),
                  child: Text(
                    "Best Seller",
                    style: Style.textstyle20,
                    textAlign: TextAlign.right,
                  ),
                ),
                // BookInfo()
              ]),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
