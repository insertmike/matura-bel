import '../models/composition.dart';

List<Composition> yovkovCompositionsList() {
  return [
    Composition(
      id: 1,
      name: 'Песента на колелетата',
      genre: 'Разказ',
      mainSubject:
          'Творчеството и съзиданието - най-прекият път към сакралния смисъл на човешкото съществуване',
      artisticShapes: ['Сади Яшар', 'Шакире', 'Джапар'],
    ),
    Composition(
      id: 2,
      name: 'Последна радост',
      genre: 'Разказ',
      mainSubject: ''
    )
  ];
}
