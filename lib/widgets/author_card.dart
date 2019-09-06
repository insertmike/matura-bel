import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;
import '../providers/authors_provider.dart';
import '../models/author.dart';
import '../screens/author_screen.dart';

class AuthorCard extends StatelessWidget {
  final Author author;
  AuthorCard(this.author);
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(AuthorScreen.routeName, arguments: author),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            
            author.imageUrl,
            fit: BoxFit.cover,
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(10),
            child: Text(
              author.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                backgroundColor: Colors.white70,
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
