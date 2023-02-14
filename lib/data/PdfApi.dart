

import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

import '../model/Car.dart';

class PdfApi{
  static Future<File> generateTable(List<Car> cars) async {
    final pdf = Document();

    print(cars.length);
    final data = cars.map((car) => [car.brand, car.model, car.equipment.title, car.price]).toList();
    final headers = ['Brand','Model','Equipment','Price'];
    pdf.addPage(Page(
        build: (context) => Table.fromTextArray(
          headers: headers,
          data: data,
        ),));
    return saveDocument(name: 'favorites_cars.pdf', pdf:pdf);

  }

  static Future<File> saveDocument({
  required String name,
  required Document pdf,
}) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file) async{
    final url = file.path;

    await OpenFile.open(url);
  }
}