class Categories{
  static final items = [
    Item(id: 1,name: "2 Wheeler Washer", image: 'assets/document.png'),
    Item(id: 2,name: "2D/3D Architect", image: 'assets/document.png'),
    Item(id: 3,name: "3D Animator", image: 'assets/document.png'),
    Item(id: 3,name: "4 Wheeler Washer", image: 'assets/document.png'),
    Item(id: 3,name: "Accountant", image: 'assets/document.png'),
    Item(id: 3,name: "Accounts Admin", image: 'assets/document.png'),
  ];
}

class Item{
  final int id;
  final String name;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.image,
  });

}


class Locations{
  static final items = [
    Item1(
      id: 1,name: "Banglore",
      image: 'assets/buildings 1.png',
      letter: 'B',

    ),
    Item1(id: 2,name: "Mumbai", image: 'assets/buildings 1.png', letter: 'M'),
    Item1(id: 3,name: "Delhi", image: 'assets/buildings 1.png', letter: 'D'),
  ];
}

class Item1{
  final int id;
  final String name;
  final String image;
  final String letter;


  Item1({
    required this.id,
    required this.name,
    required this.image,
    required this.letter,
  });

}


class Strings {
  Strings._();

  static const String number = '8812330034';

}
