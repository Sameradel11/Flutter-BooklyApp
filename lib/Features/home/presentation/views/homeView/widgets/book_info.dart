// ignore_for_file: public_member_api_docs, sort_constructors_first
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
                  child: BookCover(
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
                      height: 3,
                    ),
                    Authors(authors: book.volumeInfo!.authors!),
                    const SizedBox(
                      height: 3,
                    ),
                    PriceAndRate(
                      book: book,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class Authors extends StatelessWidget {
  const Authors({super.key, required this.authors});
  final List<String> authors;

  @override
  Widget build(BuildContext context) {
    List<Text> authorswidgets = [];
    for (String author in authors) {
      authorswidgets.add(Text(
        author,maxLines: 1,overflow: TextOverflow.ellipsis,
        style: Style.textStyle16,
      ));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: authorswidgets,
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
            : Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    " ${book.saleInfo!.listPrice!.amount!.toString()}",
                    style:
                        Style.textStyle22.copyWith(fontWeight: FontWeight.w400),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      book.saleInfo!.listPrice!.currencyCode.toString(),
                      style: Style.textStyle14.copyWith(),
                    ),
                  )
                ],
              ),
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
