import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
      
        title: Text('Матура БЕЛ'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Nothing',
        child: Icon(Icons.exit_to_app),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
