import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/style.dart';
import 'book_cover.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    const Map<String, dynamic> bookinfo = {
      "imagePath": "Assets/Images/photo1.jpg",
      'BookName': "Harry Potter and the coblet of Fire",
      "BookRate": {"Rate": "4.8", "Votes": "2123"},
      'BookAuthor': "j.K Rowling",
      "BookPrice": "19.99"
    };

    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.KDetailsView),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 20, bottom: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .13,
          // color: Colors.grey,
          child: Row(
            children: [
              AspectRatio(
                  aspectRatio: 0.8,
                  child: BookCover(testImage: bookinfo["imagePath"])),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookinfo["BookName"],
                        style: Style.textstyle20,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        bookinfo["BookAuthor"],
                        style: Style.textStyle16,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const PriceAndRate(bookinfo: bookinfo)
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PriceAndRate extends StatelessWidget {
  const PriceAndRate({
    super.key,
    required this.bookinfo,
  });

  final Map<String, dynamic> bookinfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${bookinfo['BookPrice']} \$",
          style: Style.textStyle22.copyWith(fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber.shade300,
            ),
            Text(
              "${bookinfo["BookRate"]["Rate"]} ",
              style: Style.textstyle20,
            ),
            Text(
              "(${bookinfo["BookRate"]["Votes"]})",
              style: Style.textStyle16,
            )
          ],
        )
      ],
    );
  }
}
