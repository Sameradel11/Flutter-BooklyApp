import 'package:flutter/material.dart'; // Make sure to import the correct package

class BookCoversListView extends StatefulWidget {
  const BookCoversListView({Key? key}) : super(key: key);

  @override
  State<BookCoversListView> createState() => _BookCoversListViewState();
}

class _BookCoversListViewState extends State<BookCoversListView> {
  @override
  Widget build(BuildContext context) {
    const List<String> testImages = [
      "Assets/Images/photo1.jpg",
      "Assets/Images/photo2.jpg",
      "Assets/Images/photo3.jpg",
      "Assets/Images/photo4.jpg"
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: testImages.length, // Use the length of your image list
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 0.7,
              child: Container(
                margin:
                    const EdgeInsets.all(8), // Add some spacing between items
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        testImages[index]), // Use the image from the list
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
