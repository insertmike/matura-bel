import '../models/composition.dart';

List<Composition> bagrqnaCompositionsList() {
  return [
    Composition(
        id: 1,
        name: 'Вечната',
        genre: 'Стихотворение',
        mainSubject: 'Образът на жената като безсмъртна продължителка на природно начало',
        artisticShapes: ['Мария', 'Ана', 'Смъртта']
        ),
    Composition(
      id: 2,
      name: 'Потомка',
      genre: 'Стихотворение',
      mainSubject: 'Духът на личния бунт, на битийната свобода се превръща в новата вяра',
      artisticShapes: ['Прабабата', 'Лирическата героиня', 'Земята'],
    ),
    Composition(
      id: 3,
      name: 'Стихии',
      genre: 'Стихотворение',
      mainSubject: 'Копнежът по другия живот - необуздания, не изключва обичта към родното.',
      artisticShapes: ['Лирическата героиня', 'Ферментиращото вино', 'Вятъра', 'Буйната пролетна река']

    ),
    Composition(
      id: 4,
      name: 'Кукувица',
      genre: "Стихотворение",
      mainSubject: 'Отхвърлянето на традиционната роля на жената',
      artisticShapes: ['Скитницата', 'Бродницата', 'Кукувицата', 'Гнездото', 'Сборовете']
    )
  ];
}
