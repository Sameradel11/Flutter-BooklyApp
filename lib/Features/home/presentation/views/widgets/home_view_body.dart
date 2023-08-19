import 'package:bookly/Features/home/presentation/views/widgets/book_cover.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_covers_listview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 50),
          CustomAppBar(),
          BookCoversListView(),
          Padding(
            padding: EdgeInsets.only(left: 18, top: 20),
            child: Text(
              "Best Seller",
              style: Style.titlestyle20,
              textAlign: TextAlign.right,
            ),
          ),
          BookInfo()
        ]);
  }
}

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

    return Padding(
      padding: const EdgeInsets.only(top: 18, left: 22, right: 20),
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
                      style: Style.titlestyle20,
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      bookinfo["BookAuthor"],
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "${bookinfo['BookPrice']} \$",
                          style: Style.titlestyle22
                              .copyWith(fontWeight: FontWeight.w600),
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
                              style: Style.titlestyle20,
                            ),
                            Text(
                              "(${bookinfo["BookRate"]["Votes"]})",
                              style: Style.textStyle16,
                            )
                          ],
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
