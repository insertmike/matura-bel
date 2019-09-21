import '../models/composition.dart';

List<Composition> alekoCompositionsList() {
  return [
    Composition(
        id: 1,
        name: 'Бай Ганю',
        genre: 'Няма уточнен жанр - роман, анекдотични разкази, фейлетони',
        mainSubject:
            'Превъплъщенията на българското, осмислени чрез универсалния образ на Бай Ганю',
        artisticShapes: [
          'Бай Ганю',
          'Доочолу Гочоолу',
          'Гуню',
          'Иваница Граматиков',
          'Търновлията',
          'Адвокатина'
        ]),
    Composition(
      id: 2,
      name: 'Разни хора, разни идеали',
      genre: 'Цикъл от 4 фейлетона',
      artisticShapes: [
        'Помощник-регистраторът',
        'Политикът престъпник',
        'Лъжепатриотът',
        'Племенникът',
        'Чичото'
      ],
      mainSubject: 'Всеки фейлетон изгражда образа на морално деградирал човек',
    ),
  ];
}