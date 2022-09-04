import 'package:flutter/material.dart';

class MyConstant {
  //field
  static Color dark = Color.fromARGB(255, 5, 20, 74);
  static Color active = Color.fromARGB(255, 192, 7, 69);
  static Color primary = Color.fromARGB(255, 24, 48, 120);

  //method

  BoxDecoration bgBox() {
    return BoxDecoration(color: primary);
  }

  BoxDecoration imageBox() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/bg.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  TextStyle h1Style() {
    return TextStyle(
      color: dark,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return TextStyle(
      color: dark,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      color: dark,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle h3ActiveStyle() {
    return TextStyle(
      color: active,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle h3ButtonStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );
  }
}
