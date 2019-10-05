import '../models/composition.dart';

List<Composition> dimovCompositionsList() {
  return [
    Composition(
      id: 1,
      name: 'Тютюн',
      genre: 'Роман',
      artisticShapes: [
        'Борис',
        'Ирина',
        'татко Пиер ',
        'Мария',
        'Костов',
        'Фон Гайер',
        'Макс Ешкензи',
        'Павел',
        'Лила'
      ],
      mainSubject:
          'Разрухата на личността в контекста на новите исторически реалии',
    ),
  ];
}
