
import 'package:flutter/material.dart';

class BuildImage extends StatelessWidget {
  String url;
  BuildImage({Key? key, required this.url}) : super(key: key);

  Widget buildImage(String urlImage) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: Colors.white,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ));

  @override
  Widget build(BuildContext context) {
    return buildImage(url);
  }
}
