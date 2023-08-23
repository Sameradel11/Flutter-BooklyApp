import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/similar_books_listview.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

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
        const SimilarBooksListView(),
      ],
    );
  }
}
