import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdjacentContainers extends StatelessWidget {
  const AdjacentContainers({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container(
        //   height: 50,
        //   width: 150,
        //   decoration: const BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(15),
        //           bottomLeft: Radius.circular(15))),
        //   child: Center(
        //     child: Text(
        //       '19.99C',
        //       style: Style.textStyle18
        //           .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
        // Container(
        //   height: 50,
        //   width: 150,
        //   decoration: const BoxDecoration(
        //       color: Color.fromARGB(227, 240, 149, 12),
        //       borderRadius: BorderRadius.only(
        //           topRight: Radius.circular(15),
        //           bottomRight: Radius.circular(15))),
        //   child: Center(
        //       child: Text(
        //     "Free Preview",
        //     style: Style.textStyle18.copyWith(color: Colors.white),
        //   )),
        // )

        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * .4,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)))),
            child: book.saleInfo!.listPrice == null
                ? Text(
                    "Free",
                    style: Style.textStyle18.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w800),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        " ${book.saleInfo!.listPrice!.amount!.toString()}",
                        style: Style.textstyle18.copyWith(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          " ${book.saleInfo!.listPrice!.currencyCode.toString()}",
                          style:
                              Style.textStyle14.copyWith(color: Colors.black),
                        ),
                      )
                    ],
                  ),
          ),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * .4,
          child: TextButton(
            onPressed: () async {
              final url = Uri.parse(book.volumeInfo!.previewLink!);
              bool urllaunchable = await canLaunchUrl(url);

              if (urllaunchable) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Can't Launch Right now")));
              }
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xffffef8262),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)))),
            child: Text(
              "Free Preview",
              style: Style.textStyle18.copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
