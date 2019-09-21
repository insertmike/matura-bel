import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/author.dart';

class AuthorBioCard extends StatelessWidget {
  const AuthorBioCard({
    Key key,
    @required Author author,
  })  : _author = author,
        super(key: key);

  final Author _author;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            // Birth
            RowLine(text: "Роден:", date: _author.dateOfBirth),
            Divider(height: 20),
            // Death
            RowLine(text: "Починал:", date: _author.dateOfDeath),
            Divider(height: 20),
            // Author Art Periods
            RowLine(text: "Творчески Периоди:", items: _author.periods),
            Divider(height: 20),
            // Author Quantifications
            RowLine(text: "Определян като:", items: _author.quantifications),
          ],
        ),
      ),
    );
  }
}

// Lives here because it is used only here
class RowLine extends StatelessWidget {
  final DateTime date;
  final String text;
  final List<String> items;
  RowLine({
    @required this.text,
    this.items,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    print("rebuilding authors screen");
    return Row(
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 130),
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(text),
          ),
        ),
        date != null
            ? Text(
                DateFormat.y().format(date),
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : Container(
                margin: EdgeInsets.only(left: 10),
                constraints: BoxConstraints(
                    minHeight: 50, maxHeight: 60, minWidth: 100, maxWidth: 200),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (ctx, index) => Center(
                    child: FittedBox(
                      child: Text(
                          index == (items.length - 1)
                              ? items[index]
                              : items[index] + ", ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
