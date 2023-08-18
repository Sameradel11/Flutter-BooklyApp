import 'package:flutter/cupertino.dart';

class BookCoversListView extends StatelessWidget {
  const BookCoversListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> testimage = [
      "Assets/Images/photo1.jpg",
      "Assets/Images/photo2.jpg",
      "Assets/Images/photo3.jpg",
      "Assets/Images/photo4.jpg"
    ];
    // return SizedBox(
    // child: ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: testimage.length,
    //   itemBuilder: (context, index) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("Assets/Images/photo1.jpg"),
              )),
        ),
      ),
    );
    //   },
    // ),
    // );
  }
}