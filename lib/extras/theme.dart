import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    textTheme: TextTheme(
      headline1: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
      headline2: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
      headline3: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headline4: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyText1: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        color: Colors.blue.shade400,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
