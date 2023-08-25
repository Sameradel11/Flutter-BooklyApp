import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class Authors extends StatelessWidget {
  const Authors({super.key, required this.authors});
  final List<String> authors;

  @override
  Widget build(BuildContext context) {
    List<Text> authorswidgets = [];
    for (String author in authors) {
      authorswidgets.add(Text(
        author,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
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
