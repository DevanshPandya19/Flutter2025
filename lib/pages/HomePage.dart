import 'package:flutter/material.dart';
import 'package:sellf_learn_1/widgets/drawer.dart';




class HomePage extends StatelessWidget {
  final int days=30;
  final String name="Devansh";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,// centres the title
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the $days days off flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

