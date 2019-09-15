import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:matura_lit/models/composition.dart';
import 'package:provider/provider.dart';
import './providers/authors_provider.dart';
import './screens/authors_screen.dart';
import './screens/author_screen.dart';
import './screens/composition_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled = true;
    return Provider.value(
      value: Authors(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.green,
            textTheme: TextTheme(
              body1: TextStyle(
                fontSize: 16,
              ),
            )),
        home: AuthorsListScreen(),
        routes: {
          AuthorsListScreen.routeName: (ctx) => AuthorsListScreen(),
          AuthorScreen.routeName: (ctx) => AuthorScreen(),
          CompositionScreen.routeName: (ctx) => CompositionScreen()
        },
      ),
    );
  }
}
