import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/authors_provider.dart';
import '../models/author.dart';
import '../widgets/author_card.dart';

class AuthorsListScreen extends StatelessWidget {
  static const routeName = 'authors-list';

  @override
  Widget build(BuildContext context) {
    List<Author> _authors = Provider.of<Authors>(context).authors;

    return Scaffold(
      appBar: AppBar(
        title: Text('Българска Литература'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _authors.length,
        itemBuilder: (ctx, index) => Card(
          elevation: 20,
          child: AuthorCard(_authors[index]),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
      ),
    );
  }
}
