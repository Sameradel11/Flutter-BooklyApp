import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          " ${book.saleInfo!.listPrice!.amount!.toString()}",
          style: Style.textStyle22.copyWith(fontWeight: FontWeight.w400),
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.saleInfo!.listPrice!.currencyCode.toString(),
            style: Style.textStyle14.copyWith(),
          ),
        )
      ],
    );
  }
}
