import '../models/composition.dart';

List<Composition> vapcarovCompositionsList() {
  return [
    Composition(
        id: 1,
        name: 'Вяра',
        genre: 'Стихотворение',
        mainSubject: 'Вярата в човешкия живот - реалност и утопия',
        artisticShapes: ['Вярата', 'Животът']),
    Composition(
        id: 2,
        name: 'Писмо / "Ти помниш ли.."',
        genre: 'Стихотворение',
        mainSubject: 'Вярата - най-високото духовно притежание на човечеството',
        artisticShapes: ['Лирическият аз']),
    Composition(
        id: 3,
        name: 'Песен за човека',
        genre: 'Поема',
        mainSubject:
            'Изпитание на човешката нравственост. Полемиката за същността и предназначението на човека',
        artisticShapes: ['Престъпникът', 'Дамата', 'Лирическия говорител']),
    Composition(
        id: 4,
        name: 'Борбата е безмилостно жестока..',
        genre: 'Стихотворение',
        mainSubject: 'Саможертвата - край и вечност',
        artisticShapes: ['Аз-а', 'Саможертвата', 'Борбата']),
    Composition(
      id: 5,
      name: 'Прощално',
      genre: 'Стихотворение',
      mainSubject: 'Смъртта видяна като обич - като обич към любимата жена',
      artisticShapes: ['Любимата', 'Народа'],
    ),
    Composition(
        id: 6,
        name: 'Кино',
        genre: 'Стихотворение',
        mainSubject: '„Гримираната” екранна драма и драмата на „сивия живот”',
        artisticShapes: ['Лирическия герой', 'Природата']),
    Composition(
      id: 7,
      name: 'История',
      genre: 'Стихотворение',
      mainSubject: 'Диалогът с времето и историята',
      artisticShapes: ['Азът', 'Историята - митично същество'],
    ),
    Composition(
      id: 8,
      name: 'Сън',
      genre: 'Стихотворение',
      mainSubject:
          'Копнежа по един утопичен свят – на човешката осъщественост, на свободата и позитивните връзки с другите',
      artisticShapes: ['Фернандес', 'Лори'],
    ),
    Composition(
        id: 9,
        name: 'Завод',
        genre: 'Стихотворение',
        mainSubject: 'Реалността и утопията',
        artisticShapes: ['Заводът']),
  ];
}
