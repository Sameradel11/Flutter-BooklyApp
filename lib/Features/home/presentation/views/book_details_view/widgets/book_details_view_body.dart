import 'package:bookly/Features/home/presentation/views/book_details_view/Sections/similar_books_section.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

import '../Sections/book_info_section.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            BookDetailsAppBar(),
            BookInfoSection(),
            SizedBox(
              height: 50,
            ),
            SimilarBookSection()
          ],
        ),
      ),
    );
  }
}
