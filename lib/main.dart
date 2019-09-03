import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/authors_provider.dart';
import './screens/authors_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Authors(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: AuthorsListScreen(),
      ),
    );
  }
}
