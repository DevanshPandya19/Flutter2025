import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sellf_learn_1/models/catalog..dart';
import 'package:sellf_learn_1/widgets/Item_widget.dart';
import 'package:sellf_learn_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 20;

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
      body: SafeArea(
        child: Container(
          padding:  Vx.mH32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
            ],
          ),
        ),
      ),

    );
  }
}
class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
