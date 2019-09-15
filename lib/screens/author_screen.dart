import 'package:flutter/material.dart';
import '../models/author.dart';
import '../widgets/author_bio_card.dart';
import '../widgets/author_compositions_cards.dart';

class AuthorScreen extends StatelessWidget {
  static const routeName = 'author-screen';

  AuthorScreen();

  @override
  Widget build(BuildContext context) {
    Author _author = ModalRoute.of(context).settings.arguments as Author;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                _author.name,
                style: TextStyle(letterSpacing: 1.05),
              ),
              background: Hero(
                tag: _author.imageUrl,
                child: Image.asset(
                  _author.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                AuthorBioCard(author: _author),

                AuthorCompositionsCardsBuilder(_author),
                // Debugging purposes
                SizedBox(height: 900),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
