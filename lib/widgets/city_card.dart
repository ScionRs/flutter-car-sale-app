
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/City.dart';


class CityCardWidget extends StatefulWidget {
  City city;
  final ValueChanged<bool> isSelected;

  CityCardWidget({required this.city, required this.isSelected});

  @override
  State<CityCardWidget> createState() => _CityCardWidgetState();
}

class _CityCardWidgetState extends State<CityCardWidget> {
  bool isSelected = false;

  Widget buildImage(String urlImage) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: Colors.white,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          side: BorderSide(
            color: isSelected ? Colors.blue : Colors.white,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(widget.city.name, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black,),),
                  Text("Автосалонов:${widget.city.autoShowList.length}", style: const TextStyle(fontSize: 15.0, color: Colors.grey),),
                ],
              ),

              const Icon(Icons.chevron_right, size: 30.0,),
            ],
          ),
        ),
      ),
    );
  }
}