import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color :Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black),
      centerTitle: true,
    )
  );


  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.orange,
      appBarTheme: AppBarTheme(
        color :Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      )
  );
}
