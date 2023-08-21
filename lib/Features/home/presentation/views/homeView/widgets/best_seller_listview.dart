import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_info.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) => const BookInfo()));
    // const ListView.
  }
}
