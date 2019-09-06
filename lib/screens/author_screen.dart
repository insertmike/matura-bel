import 'package:flutter/material.dart';
import 'package:matura_lit/models/composition.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../providers/authors_provider.dart';
import '../models/author.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
                    fontSize: 25, letterSpacing: 1.05, color: Colors.white),
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
                        new RowLine(
                          text: "Роден:",
                          date: _author.dateOfBirth,
                        ),
                        Divider(height: 20),
                        new RowLine(
                          text: "Починал:",
                          date: _author.dateOfDeath,
                        ),
                        Divider(
                          height: 20,
                        ),
                        RowLine(
                          text: "Творчески Периоди:",
                          items: _author.getPeriods,
                        ),
                        Divider(
                          height: 20,
                        ),
                        RowLine(
                          text: "Определян като::",
                          items: _author.getQuantifications,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(item.name + ","),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ]),
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

class RowLine extends StatelessWidget {
  String items;
  DateTime date;
  final String text;

  RowLine({
    @required this.text,
    this.items,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    print(items);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
       
      children: <Widget>[
        Text(text),
        SizedBox(
          width: 7,
        ),
        date != null
            ? Text(
                DateFormat.y().format(date),
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : Flexible(
                child: Text(
                  items,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
      ],
    );
  }
}
