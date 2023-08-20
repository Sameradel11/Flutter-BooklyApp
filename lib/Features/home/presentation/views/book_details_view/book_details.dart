import 'package:bookly/Features/home/presentation/views/homeView/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(children: [
            const Icon(Icons.cancel),
            const Spacer(
              flex: 8,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 28,
                )),
            const Spacer(
              flex: 1,
            ),
          ]),
        )
      ],
    );
  }
}
