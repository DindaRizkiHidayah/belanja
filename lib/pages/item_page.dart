import 'package:belanja/models/Item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50]
        ),
        alignment: Alignment.center,
        child: Text(
          tempItem.name + " merk " + tempItem.merk + " price " + tempItem.price.toString() ,
        ),
      ),
    );
  }
}
