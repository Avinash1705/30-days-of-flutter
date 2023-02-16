import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    final String name = "Avinash";
    return Scaffold(
      appBar: AppBar(
        title: Text("Category App"),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
