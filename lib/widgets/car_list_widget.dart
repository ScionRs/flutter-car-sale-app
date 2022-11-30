

import 'package:flutter/material.dart';

import '../model/car_category.dart';

class CarCardWidget extends StatefulWidget {
  CarCategory carCategory;
  final ValueChanged<bool> isSelected;

  CarCardWidget({required this.carCategory, required this.isSelected});

  @override
  State<CarCardWidget> createState() => _CarCardWidgetState();
}

class _CarCardWidgetState extends State<CarCardWidget> {
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
          side: BorderSide(
            color: isSelected ? Colors.blue : Colors.white,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildImage('${widget.carCategory.image}'),
            Text('${widget.carCategory.name}')
          ],
        ),
      ),
    );
  }
}
