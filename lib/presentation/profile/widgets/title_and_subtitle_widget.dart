import 'package:flutter/material.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    Key key,
    @required this.subTitle,
    @required this.title,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notable works",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Based on the popularity of articles",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        )
      ],
    );
  }
}
