abstract class IsSilly {
  void makePeopleLaugh();
}

class Clown implements IsSilly {

  void makePeopleLaugh() {
    // Here is where the magic happens
  }

}

class Comedian implements IsSilly {

  void makePeopleLaugh() {
    // Here is where the magic happens
  }

}




abstract class ORMInterface {
  void fromJson(Map<String, dynamic> _map);
}

abstract class ORM implements ORMInterface {

  String collection = 'default';

  first(Map<String, dynamic> _map2) {
    print("Col $collection");
  }
}

class Person extends ORM {

  String collection = 'persons';

  fromJson(Map<String, dynamic> _map) {
    print("Here is mandatory");
  }
}