import 'package:flutter/material.dart';
import 'package:sellf_learn_1/models/catalog..dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      child: ListTile(
        leading: Image.network(item.image,),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
            textScaleFactor: 1.2,
          style: TextStyle(color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),

    );
  }
}
