import 'package:flutter/material.dart';
import 'package:lab4/style/lorem.dart';
import 'package:lab4/style/text_style.dart';

class AuthorItem extends StatelessWidget {
  const AuthorItem({
    super.key, required this.author, required this.tittle,
  });
  final String author;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: Column(
        children: [
          Text(author,style: Styles.secondaryText(),),
          SizedBox(
            height: 6,
          ),
          Text(tittle,style: Styles.secondaryText(),),
          SizedBox(
            height: 6,
          ),
          Text(Lorem.loremText),
        ],
      ),
    );
  }
}