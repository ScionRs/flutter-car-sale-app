import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color.fromRGBO(48, 55, 120, 1);
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const black = Color.fromRGBO(15, 23, 42, 1);
  static const lightnessGrey = Color.fromRGBO(252, 252, 253, 1);
  static const lightGrey = Color.fromRGBO(243, 244, 246, 1);
  static const grey = Color.fromRGBO(156, 163, 175, 1);
  static const red = Color.fromARGB(255, 225, 9, 9);
  static const textBigTitle =  TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  static const customTextStyleWhite = TextStyle(color: Colors.white);
  static const customTextStyleBlack = TextStyle(color: Colors.black);
  static const customBackgroundWhite = Color.fromRGBO(255, 255, 255, 1);
  static const customBackgroundGreyCard = Color.fromRGBO(229, 231, 235, 1);

  /* Стили для кнопок */
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

}
