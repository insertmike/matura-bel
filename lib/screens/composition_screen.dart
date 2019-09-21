import 'package:flutter/material.dart';

class CompositionScreen extends StatelessWidget {
  static const routeName = 'composition-screen';

  List<String> getRows(String str) {
    List<String> rows = new List();
    String current = '';
    for (var item in str.split('')) {
      if (item == '\n') {
        rows.add(current);
        current = '';
      } else {
        current += item;
      }
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    String _composition = ModalRoute.of(context).settings.arguments as String;
    List<String> rows = getRows(_composition);

    return Scaffold(
        appBar: AppBar(
          title: Text('Матура БЕЛ'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: rows.length,
            itemBuilder: (ctx, index) => Text(rows[index]),
          ),
        ));
  }
}
