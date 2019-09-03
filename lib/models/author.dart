import 'package:flutter/foundation.dart';

class Author {
  final String id;
  final String name;
  // DateTime.utc
  final DateTime dateOfBirth; 
  final DateTime dateOfDeath;
  final List<String> quantifications;
  final List<String> periods;
  final List<String> compositions;
  
  Author({
    @required this.id,
    @required this.name,
    @required this.dateOfBirth,
    @required this.dateOfDeath,
    @required this.quantifications,
    @required this.periods,
    @required this.compositions
  });
}