import 'package:flutter/material.dart';
import 'package:matura_lit/screens/composition_screen.dart';
import '../models/author.dart';

class AuthorCompositionsCardsBuilder extends StatelessWidget {
  final Author _author;

  const AuthorCompositionsCardsBuilder(this._author);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: _author.compositions.length,
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 4,
          child: InkWell(
            onTap: () => Navigator.of(context).pushNamed(
                CompositionScreen.routeName,
                arguments: _author.compositions[index]),
            child: Stack(children: [
              CompositionImage(),
              CompositionTitle(_author.compositions[index].name),
            ]),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0),
    );
  }
}

class CompositionImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/book.jpg",
        fit: BoxFit.cover, width: double.infinity);
  }
}

class CompositionTitle extends StatelessWidget {
  final String title;
  const CompositionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                backgroundColor: Colors.black38,
                letterSpacing: 1.01),
          ),
        ),
      ),
    );
  }
}
