import 'package:flutter/foundation.dart';

class Composition {
  final int id;
  final String name;
  final String genre;
  final String mainSubject;
  final List<String> artisticShapes;
  final String text;

  Composition({
    @required this.id,
    @required this.name,
    @required this.genre,
    @required this.mainSubject,
    @required this.artisticShapes,
    this.text,
  });
}
