import '../models/composition.dart';

List<Composition> yovkovCompositionsList() {
  return [
    Composition(
      id: 1,
      name: 'Шибил',
      genre: 'Разказ',
      mainSubject: 'Любовта и изкуплението',
      artisticShapes: ['Рада', 'Шибил', 'Мурад', 'чорбаджи Велико Кехая'],
    ),
    Composition(
      id: 2,
      name: 'Индже',
      genre: 'Разказ',
      mainSubject: 'Вината и изкуплението',
      artisticShapes: [
        'Индже',
        'Пауна',
        'Сяро Барутчията',
        'Калмучката',
        'Найден - Гърбавото'
      ],
    ),
    Composition(
        id: 3,
        name: 'През чумавото',
        genre: 'Разказ',
        mainSubject:
            'Любовта и смъртта като сказание за греха и изкуплението му',
        artisticShapes: [
          'Чумата',
          'Сватбата',
          'Величко Дойкин',
          'Тиха',
          'хаджи Драган',
          'дядо Нейко'
        ]),
    Composition(
        id: 4,
        name: 'Последна радост',
        genre: 'Разказ',
        mainSubject: 'Войната и ценностите на човешкия свят',
        artisticShapes: [
          'Рачо Самсарът',
          'лудият дядо Слави',
          'Люцкан',
          'Цветана',
          'инжинерът',
          'Рачо Самсара',
          'Вартоломей Вардев'
        ]),
    Composition(
      id: 5,
      name: 'Албена',
      genre: 'Разказ',
      mainSubject: 'Силата на женската красота',
      artisticShapes: ['Албена', 'Нагул', 'дядо Власю', 'Куцар'],
    ),
    Composition(
      id: 6,
      name: 'Другоселец',
      genre: 'Разказ',
      artisticShapes: [
        'Другоселецът',
        'Торашко',
        'каменарят',
        'Селяните',
        'Татар Христо',
        'Кметът'
      ],
      mainSubject: 'Състраданието и милосърдието',
    ),
    Composition(
        id: 7,
        name: 'Серафим',
        genre: 'Разказ',
        mainSubject: 'Доброто, което човек върши, без да очаква отплата',
        artisticShapes: ['Серафим', 'Еню']),
    Composition(
      id: 8,
      name: 'Песента на колелетата',
      genre: 'Разказ',
      mainSubject:
          'Творчеството и съзиданието - най-прекият път към сакралния смисъл на човешкото съществуване',
      artisticShapes: ['Сали Яшар', 'Шакире', 'Джапар'],
    )
  ];
}
