import '../models/author.dart';
import '../info_assets/vazov_compositions.dart';
import '../info_assets/botev_compositions.dart';
import '../info_assets/aleko_compositions.dart';
import '../info_assets/slaveikov_compositions.dart';

// Change Modifier we don't need it
class Authors {
  List<Author> _authors = [
    Author(
      id: 1,
      name: "Христо Ботев",
      town: 'Калофер',
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
      town: 'Сопот',
      dateOfBirth: DateTime.utc(1850, 7, 27),
      compositions: vazovCompositionsList(),
      dateOfDeath: DateTime.utc(1921, 9, 22),
      periods: ["Възраждане", " Следосвобожденска България"],
      quantifications: [
        "Патриарх на българската литература",
        "Народен поет",
        "Българският Омир",
        "Летописец на своето време",
      ],
      imageUrl: "assets/images/ivan_vazov.jpg",
    ),
    Author(
      id: 3,
      name: 'Алеко Константинов',
      town: 'Свищов',
      dateOfBirth: DateTime.utc(1863, 1, 1),
      dateOfDeath: DateTime.utc(1897, 5, 11),
      periods: ["Социален Реализъм"],
      quantifications: [
        "Щастливеца",
        'Основател на организираното туристическо движение в България'
      ],
      imageUrl: "assets/images/aleko_konstantinov.jpg",
      compositions: alekoCompositionsList(),
    ),
    Author(
        id: 4,
        name: 'Пенчо Славейков',
        town: 'Трявна',
        dateOfBirth: DateTime.utc(1866, 4, 27),
        dateOfDeath: DateTime.utc(1912, 5, 28),
        imageUrl: "assets/images/pencho_slaveikov.jpg",
        periods: ['Модернизъм', 'Индивидуализъм'],
        compositions: slaveikovCompositions(),
        quantifications: ['Жрец войн'])
  ];

  List<Author> get authors {
    // Returning a copy so the user does not modify original data
    return [..._authors];
  }
}
