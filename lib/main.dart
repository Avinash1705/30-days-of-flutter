import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home_page.dart';
import 'package:flutter_learn/pages/login_page.dart';
import 'package:flutter_learn/utils/routes/MyRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),
      initialRoute: "/home",
      routes: {
    MyRoutes.loginRoute:(context) => LoginPage(),
    MyRoutes.homeRoute:(context)  => HomePage(),
    MyRoutes.loginRoute :(context) => LoginPage(),
    },
    );
  }
}
