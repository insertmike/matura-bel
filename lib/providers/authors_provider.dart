import '../models/author.dart';
import '../info_assets/vazov_compositions.dart';
import '../info_assets/botev_compositions.dart';
import '../info_assets/aleko_compositions.dart';
import '../info_assets/slaveikov_compositions.dart';
import '../info_assets/qvorov_compositions.dart';
import '../info_assets/pelin_compositions.dart';
import '../info_assets/debelqnov_compositions.dart';
import '../info_assets/smirnenski_compositions.dart';
import '../info_assets/milev_compositions.dart';
import '../info_assets/dalchev_compositions.dart';

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
        quantifications: ['Жрец войн']),
    Author(
      id: 5,
      name: 'Пейо Яворов',
      town: 'Чирпан',
      compositions: qvorovCompositions(),
      dateOfBirth: DateTime.utc(1878, 1, 1),
      dateOfDeath: DateTime.utc(1914, 10, 17),
      periods: ['Реализъм', 'Модернизъм'],
      quantifications: ['Поет', 'Мемоарист', 'Драматург', 'Биограф'],
      imageUrl: "assets/images/peio_qvorov.jpg",
    ),
    Author(
        id: 6,
        name: 'Елин Пелин',
        dateOfBirth: DateTime.utc(1877, 6, 8),
        dateOfDeath: DateTime.utc(1949, 12, 3),
        town: 'Байлово, Софийско',
        imageUrl: "assets/images/elin_pelin.jpg",
        periods: ['Реализъм'],
        compositions: pelinCompositionsList(),
        quantifications: [
          'Майстор на късия разкъз',
          'Художник на българското село',
          'Певец на българското село'
        ]),
    Author(
      id: 7,
      name: 'Димчо Дебелянов',
      periods: ['Символизъм'],
      dateOfBirth: DateTime.utc(1887, 3, 28),
      dateOfDeath: DateTime.utc(1916, 10, 2),
      town: 'Копривщица',
      quantifications: ['Най-елегичния поет', 'Бездомник в нощта'],
      compositions: debelqnovCompositionsList(),
      imageUrl: "assets/images/dimcho_debelqnov.jpg",
    ),
    Author(
      id: 8,
      name: 'Христо Смирненски',
      periods: ['Постсимволизъм'],
      quantifications: [
        'Псевдоним - Ведбал',
        'Юноша',
        'Слънчевото дете на българската поезия',
        'поет на Града'
      ],
      dateOfBirth: DateTime.utc(1898, 9, 17),
      dateOfDeath: DateTime.utc(1923, 6, 18),
      town: 'Кукуш',
      imageUrl: "assets/images/hristo_smirnenski.jpg",
      compositions: smirnenskiCompositionsList(),
    ),
    Author(
      id: 9,
      name: 'Гео Милев',
      dateOfBirth: DateTime.utc(1895, 1, 15),
      dateOfDeath: DateTime.utc(1925, 5, 15),
      town: 'Раднево',
      periods: ['Експреонизъм'],
      quantifications: ['-'],
      imageUrl: "assets/images/geo_milev.jpg",
      compositions: milevCompositionsList(),
    ),
    Author(
      id: 10,
      name: 'Атанас Далчев',
      town: 'Солун',
      dateOfBirth: DateTime.utc(1904, 6, 12),
      dateOfDeath: DateTime.utc(1978, 1, 17),
      periods: ['Диаболизъм'],
      quantifications: ['Поет', 'Преводач', 'Критик', 'Мислител'],
      imageUrl: "assets/images/atanas_dalchev.jpg",
      compositions: dalchevCompositionsList(),
    ),
  ];

  List<Author> get authors {
    // Returning a copy so the user does not modify original data
    return [..._authors];
  }
}
