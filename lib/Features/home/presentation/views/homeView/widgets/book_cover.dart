import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.imagelink,
  });
  final String imagelink;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        errorWidget: (context, url, error) =>  const  Center(child: Icon(Icons.error),),
        placeholder:(context, url) => const Center(child: CircularProgressIndicator(),) ,
        imageUrl: imagelink,
        fit: BoxFit.fill,
      ),
    );
  }
}
