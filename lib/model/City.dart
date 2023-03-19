

import 'Dealer.dart';

class City {
  final String id;
  final String name;
  final List<Dealer> autoShowList;

  City({required this.id, required this.name, required this.autoShowList});

  factory City.fromJson(Map<String, dynamic> parsedJson) {
    var autoShowListFromJson = parsedJson['autoShowList'] as List;
    List<Dealer> autoShowListParsed =
        autoShowListFromJson.map((e) => Dealer.fromJson(e)).toList();
    return City(
        id: parsedJson['_id'],
        name: parsedJson['brand'],
        autoShowList: autoShowListParsed);
  }
}
