import 'package:flutter/material.dart';

import 'package:matura_lit/models/composition.dart';

class CompositionScreen extends StatelessWidget {
  static const routeName = 'composition-screen';

  @override
  Widget build(BuildContext context) {
    final Composition _composition =
        ModalRoute.of(context).settings.arguments as Composition;

    return Scaffold(
        appBar: AppBar(
          title: Text(_composition.name),
        ),
        body: Center(
          child: Text(_composition.name),
        ));
  }
}
