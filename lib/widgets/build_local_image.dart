
import 'package:flutter/material.dart';

class BuildLocalImage extends StatelessWidget {
  String url;
  BuildLocalImage({Key? key, required this.url}) : super(key: key);

  Widget buildImage(String urlImage) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: Colors.transparent,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ));

  @override
  Widget build(BuildContext context) {
    return buildImage(url);
  }
}
