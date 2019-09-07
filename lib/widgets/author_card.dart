import 'package:flutter/material.dart';
import '../models/author.dart';
import '../screens/author_screen.dart';

class AuthorCard extends StatelessWidget {
  final Author author;
  AuthorCard(this.author);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(AuthorScreen.routeName, arguments: author),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: author.imageUrl,
            child: Image.asset(
              author.imageUrl,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(10),
            child: Text(
              author.name,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.05,
              ),
            ),
          ),

          //Text(author.name),
        ],
      ),
    );
  }
}
