import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/best_seller_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key, required this.allbooks});
  final List<BookModel> allbooks;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          "You can also like",
          style: Style.textstyle20.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 16,
        ),
        BestSellerListView(similarbooks: allbooks),
      ],
    );
  }
}
