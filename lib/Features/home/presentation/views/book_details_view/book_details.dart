import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_cover.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const BookDetailsAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
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
          const Text(
            "Any Author here",
            style: Style.textStyle16,
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                " 4.8",
                style: Style.textstyle18,
              ),
              Text(
                " (2390)",
                style: Style.textStyle16,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const AdjacentContainers()
        ],
      ),
    );
  }
}

class AdjacentContainers extends StatelessWidget {
  const AdjacentContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 150,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: Center(
            child: Text(
              '19.99C',
              style: Style.textStyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 150,
          decoration: const BoxDecoration(
              color: Color.fromARGB(227, 240, 149, 12),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          child: Center(
              child: Text(
            "Free Preview",
            style: Style.textStyle18.copyWith(color: Colors.white),
          )),
        )
      ],
    );
  }
}
