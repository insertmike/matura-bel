import 'package:flutter/material.dart';

class CompositionScreen extends StatelessWidget {
  static const routeName = 'composition-screen';

  @override
  Widget build(BuildContext context) {
    String _composition = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
        appBar: AppBar(
          title: Text('Матура БЕЛ'),
        ),
        body: Center(
          child: Text(_composition),
        ));
  }
}
