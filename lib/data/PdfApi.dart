

import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

import '../model/Car.dart';

class PdfApi{
  static Future<File> generateTable(List<Car> cars) async {
    final pdf = Document();
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);

    print(cars.length);
    final data = cars.map((car) => [car.brand, car.model, car.equipment.title, car.price]).toList();
    final headers = ['Brand','Model','Equipment','Price'];
    pdf.addPage(
        Page(
          build: (context) => Column(
            children: [
              Text('Favorites cars'),
              SizedBox(height: 15),
              Table.fromTextArray(
            headers: headers,
            data: data,
          ),
              SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Date: ${date.toString().replaceAll("00:00:00.000", "")}',style: TextStyle(fontWeight: FontWeight.bold)),
              ]
            )
            ])));
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