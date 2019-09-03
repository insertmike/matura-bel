import 'package:flutter/widgets.dart';
import '../models/author.dart';

class Authors with ChangeNotifier {
  List<Author> _authors = [];

  List<Author> get authors {
    // Returning a copy so the user does not modify original data
    return [..._authors];
  }
}
