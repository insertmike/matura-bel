import '../models/composition.dart';

List<Composition> slaveikovCompositions() {
  return [
    Composition(
        id: 1,
        name: "Cis moll",
        genre: "Философска поема",
        artisticShapes: [
          "Бетовен",
        ],
        mainSubject:
            "Творчеството като надмогване на страданието и път към познанието"),
    Composition(
      id: 2,
      name: 'Сън за щастие',
      genre: 'Стихосбирка',
      mainSubject:
          'Копнежа на модерната душа по красивото и възвишеното като алтернатива на ежедневието',
      artisticShapes: ['самотата'],
    ),
    Composition(
      id: 3,
      name: 'Ни лъх не дъхва над полени',
      genre: 'Лирическа миниатюра',
      mainSubject: 'Стремежът на пътя и вечното завръщане',
      artisticShapes: [
        'небето',
        'полените',
        'дърветата',
        'морето от бисерна роса'
      ],
    ),
    Composition(
      id: 4,
      name: 'Спи езерото',
      artisticShapes: [
        'Тъмното спящо езеро',
        'Белостволите буки, устремени към езерото'
      ],
      genre: 'Лирическа миниатюра',
      mainSubject:
          'Сънят - метафора на мечтание, но и на абсолютен покой, на съзерцание и вглеждане в същностното',
    ),
    Composition(
        id: 5,
        name: 'Самотен гроб в самотен кът',
        genre: 'Лирическа миниатюра',
        artisticShapes: [
          'Пътя',
          'Смъртта',
          'Образът на гроба',
        ],
        mainSubject:
            'Смъртта като достигане на точката на неподвижността, но и отласкване от нея'),
    Composition(
      id: 6,
      name: 'Ралица',
      artisticShapes: [
        'Ралица',
        'Стоичко Влаха',
        'Иво',
      ],
      genre: 'Битово-психологическа поема',
      mainSubject: 'Мотивът за трудната съдба на отличените с хубост',
    ),
  ];
}
