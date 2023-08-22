import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/adjacent_contianers.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/rate.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/similar_books_listview.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_cover.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const BookDetailsAppBar(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: const AspectRatio(
                  aspectRatio: 0.7,
                  child: BookCover(testImage: "Assets/Images/photo1.jpg")),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "The Jungle Book",
              style: Style.textStyle22,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Any author here",
              style: Style.textStyle16.copyWith(fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 15,
            ),
            const Rate(),
            const SizedBox(
              height: 40,
            ),
            const AdjacentContainers(),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: Style.textstyle20.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SimilarBooksListView(),
          ],
        ),
      ),
    ));
  }
}
