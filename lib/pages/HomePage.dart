import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sellf_learn_1/models/catalog..dart';
import 'package:sellf_learn_1/widgets/Item_widget.dart';
import 'package:sellf_learn_1/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Devansh";

  @override
  //void initstate() {
    //super.initState();
    //loadData();
  //}

  //loadData() async {
    //final catalogJson =
      //  await rootBundle.loadString("Assests/files/catalog.json");
    //final decodedData = jsonDecode(catalogJson);
    //var productsData = decodedData["products"];
    //CatalogModel.items= List.from(productsData)
      // .map <Item>((item) => Item.fromMap(item)).toList();
    //setState(() {});
  //}

  Widget build(BuildContext context) {
     final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true, // centres the title
      ),
      body: ListView.builder(
       itemCount: dummyList.length,
       ///   itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
          //item: CatalogModel.items[index],
            );
          }),
      drawer: MyDrawer(),
    );
  }
}
