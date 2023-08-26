import 'package:bookly/Features/home/presentation/views/homeView/widgets/best_seller_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                "Result",
                style: Style.textstyle20
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
              ),
            ),
            const BestSellerListView(similarbooks: [],)
          ],
        ),
      ),
    );
  }
}
