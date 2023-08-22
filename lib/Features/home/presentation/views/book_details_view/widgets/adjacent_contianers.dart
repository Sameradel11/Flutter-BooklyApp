import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

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
            child: Text(
              "19,99C",
              style: Style.textStyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * .4,
          child: TextButton(
            onPressed: () {},
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
