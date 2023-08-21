import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          BookDetailsAppBar(),
        ],
      ),
    );
  }
}
