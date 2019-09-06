import '../models/composition.dart';

List<Composition> vazovCompositionsList() {
  return [
    Composition(
        id: 1,
        name: "Българският език", 
        genre: "Ода",
        mainSubject:  "Възторжена възхвала на българския език и отхвърляне на рутателството",
        artisticShapes: ["Лирически аз", "Езикът", "Ругателите", "Родината"],),
    Composition(
      id: 2,
      name: "Отечество любимо",
      genre: "Ода",
      mainSubject: "Красотата на отечеството",
      artisticShapes: ["Лирически говорител", "Отечество", "Следосвобожденски човек"],

    ),
    Composition(
      id: 3,
      name: "При Рилския манастир",
      genre: "Ода",
      artisticShapes: ["Лирически аз", "Природата"],
      mainSubject: "Природата - свещен хвам за душата",
    ),
    Composition(
      id: 4,
      name: "Елате ни вижте",
      genre: "Гражданска елегия",
      mainSubject: "Голямото разочарование от следосвобожденската действителност",
      artisticShapes: ["Лирическият аз", "Тънещите в мизерия и забрава"],

    ),
    Composition(
      id: 5,
      name: "Линее нашто поколение",
      genre: "Гражданска елегия",
      mainSubject: "Горчивата равносметка за изгубения възрожденски идеализъм, за покрусените надежди, че свободата??",
      artisticShapes: ["Лирически говорител", "Лампата на Божия олтар", "Звездата на моряка"],
      
    )
      
        

   
  ];
}
