import 'dart:async';
import 'dart:convert';
import 'package:flutter_learn/utils/routes/MyRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/widgets/item_widget.dart';
import '../models/catelog.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loaFileDate();
  }

  void loaFileDate() async {
    var jsonString = await rootBundle.loadString("assets/files/catalog.json");
    var decodeString = jsonDecode(jsonString)["products"]; // in object format
    print(decodeString);
    //mapping
    CatelogModel.items = List.from(decodeString)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var days = 30;
    const String name = "Avinash";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category App"),
      ),
      body: Material(
        child: (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatelogModel.items.length,
                itemBuilder: (BuildContext context, int index) =>
                    ItemWiget(item: CatelogModel.items[index]),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
