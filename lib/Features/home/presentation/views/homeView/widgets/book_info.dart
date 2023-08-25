// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/Features/home/presentation/views/homeView/widgets/apiprice.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/authors.dart';
import 'package:flutter/material.dart';

import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/const.dart';

import '../../../../../../core/utils/style.dart';
import 'book_cover.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 20, bottom: 20),
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * .13,
          // maxHeight: MediaQuery.of(context).size.height * .3,
        ),
        // color: Colors.grey,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.height * .09,
              child: AspectRatio(
                  aspectRatio: Kcoveraspectration,
                  child: book.volumeInfo!.imageLinks==null?const CircularProgressIndicator(): BookCover(
                    imagelink: book.volumeInfo!.imageLinks!.thumbnail!,
                  )),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.volumeInfo!.title!,
                      style: Style.textstyle20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Authors(authors: book.volumeInfo!.authors!),
                    PriceAndRate(
                      book: book,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class PriceAndRate extends StatelessWidget {
  const PriceAndRate({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        book.saleInfo!.listPrice == null
            ? Text(
                'Free Book',
                style: Style.textstyle20.copyWith(fontWeight: FontWeight.w400),
              )
            : Price(book: book),
        const Spacer(
          flex: 1,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber.shade300,
            ),
            const Text(
              "4.8 ",
              style: Style.textstyle20,
            ),
            const Text(
              "2289",
              style: Style.textStyle16,
            )
          ],
        )
      ],
    );
  }
}
