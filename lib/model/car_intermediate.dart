
class CarIntermediate{
  String id;
  String brand;
  String model;
  String image;
  String description;

  CarIntermediate({required this.id,required this.brand,required this.model, required this.image, required this.description});

  factory CarIntermediate.fromJson(Map<String, dynamic> parsedJson){
    return CarIntermediate(
        id: parsedJson['_id'],
        brand: parsedJson['brand'],
        model: parsedJson['model'],
        image: parsedJson['image'],
        description: parsedJson['description']
    );
  }
}