
import 'package:flutter/material.dart';

class AppValue {
  static final customStyleBlue = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 73, 183, 1)),
      minimumSize: MaterialStateProperty.all(Size(150,50)),
      maximumSize: MaterialStateProperty.all(Size(350,150)),
      shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            side: BorderSide(color: Color.fromRGBO(0, 73, 183, 1),
                width: 1.5),
          ))
  );
  static final customStyleWhite = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      minimumSize: MaterialStateProperty.all(Size(150,50)),
      maximumSize: MaterialStateProperty.all(Size(350,150)),
      shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            side: BorderSide(color: Color.fromRGBO(0, 73, 183, 1),
                width: 1.5),
          ))
  );
  static final customTextStyleWhite = TextStyle(color: Colors.white);
  static final customTextStyleBlack = TextStyle(color: Colors.black);
  static final customBackgroundWhite = Color.fromRGBO(255, 255, 255, 1);
  static final customBackgroundGreyCard = Color.fromRGBO(229, 231, 235, 1);
}