
import 'package:car_sale_app/model/Autoshow.dart';

class City{
  final String id;
  final String name;
  final List<AutoShow> autoShowList;

  City({required this.id,required this.name,required this.autoShowList});

  factory City.fromJson(Map<String, dynamic> parsedJson){
    var autoShowListFromJson = parsedJson['autoShowList'] as List;
    List<AutoShow> autoShowListParsed = autoShowListFromJson.map((e) => AutoShow.fromJson(e)).toList();
    return City(
      id: parsedJson['_id'],
      name: parsedJson['brand'],
      autoShowList: autoShowListParsed
    );
  }
}