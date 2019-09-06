import 'package:flutter/material.dart';
import 'package:matura_lit/models/composition.dart';
import 'package:provider/provider.dart';

import '../providers/authors_provider.dart';
import '../models/author.dart';
import '../widgets/author_card.dart';

class AuthorScreen extends StatelessWidget {
  static const routeName = 'author-screen';

  AuthorScreen();

  @override
  Widget build(BuildContext context) {
    Author _author = ModalRoute.of(context).settings.arguments as Author;
    //List<Author> _authors = Provider.of<Authors>(context).authors;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                _author.name,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 1.05,
                ),
              ),
              background: Image.asset(
                _author.imageUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Роден: 6 Януари 1848",
                          style: TextStyle(fontSize: 16),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          "Починал: 6 Януари 1848",
                          style: TextStyle(fontSize: 16),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          'Творчески Периоди: ${_author.getPeriods}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          'Определян като: ${_author.getQuantifications}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text("Творби:"),
                        Card(
                          margin: EdgeInsets.only(top: 10),
                          elevation: 10,
                          child: Column(
                            children: <Widget>[
                              for (var item in _author.compositions)  
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text(item.name + ",", style: TextStyle(fontSize: 15),), SizedBox(height: 20,)]),
                                
                                
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
