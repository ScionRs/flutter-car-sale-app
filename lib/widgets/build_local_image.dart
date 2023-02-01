
import 'package:flutter/material.dart';

class BuildLocalImage extends StatelessWidget {
  String url;
  double? width;
  double? height;
  BuildLocalImage({Key? key, required this.url, this.width, this.height}) : super(key: key);

  Widget buildImage(String urlImage) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: Colors.transparent,
      child: Image.asset(
        urlImage,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ));

  @override
  Widget build(BuildContext context) {
    return buildImage(url);
  }
}
