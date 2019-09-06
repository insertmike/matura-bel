import 'package:flutter/widgets.dart';

import '../models/author.dart';
import '../info_assets/vazov_compositions.dart';
import '../info_assets/botev_compositions.dart';

// Change Modifier we don't need it
class Authors {
  List<Author> _authors = [
    Author(
      id: 1,
      name: "Христо Ботев",
      dateOfBirth: DateTime.utc(1848, 1, 6),
      compositions: botevCompositionsList(),
      dateOfDeath: DateTime.utc(1876, 6, 1),
      periods: ["Романтизъм", "Реализъм"],
      quantifications: ["Сатирик", "Революционер"],
      imageUrl: "assets/images/hristo_botev.jpg",
    ),
    Author(
      id: 2,
      name: "Иван Вазов",
      dateOfBirth: DateTime.utc(1850, 7, 27),
      compositions: vazovCompositionsList(),
      dateOfDeath: DateTime.utc(1921, 9, 22),
      periods: ["Възраждане", " Следосвобожденска България"],
      quantifications: ["Патриарх на българската литература", "Народен поет", "Българският Омир", "Летописец на своето време",],
      imageUrl: "assets/images/ivan_vazov.jpg",
    ),
    
  ];

  List<Author> get authors {
    // Returning a copy so the user does not modify original data
    return [..._authors];
  }

  
}
