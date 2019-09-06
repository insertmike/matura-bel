import 'package:flutter/foundation.dart';

import './composition.dart';

class Author {
  final int id;
  final String name;
  // DateTime.utc
  final DateTime dateOfBirth;
  final DateTime dateOfDeath;
  final List<String> quantifications;
  // TODO -> Make Period Model
  final List<String> periods;
  final List<Composition> compositions;
  final String imageUrl;

  Author({
    @required this.id,
    @required this.name,
    @required this.dateOfBirth,
    @required this.dateOfDeath,
    @required this.quantifications,
    @required this.periods,
    @required this.compositions,
    @required this.imageUrl,
  });

  String get getPeriods{
    var periodsString = "";
    for (var item in periods) {
      periodsString+= "$item, ";
    }

    return  periodsString.substring(0,periodsString.length - 2);
    
  }

  String get getQuantifications{
    var quantsString = "";
    for (var item in quantifications) {
      quantsString+= "$item, ";
    }

    return  quantsString.substring(0,quantsString.length - 2);
  }
}
