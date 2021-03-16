import 'dart:js';

import 'package:belanja/models/Item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 12000, merk: 'Palm sugar'),
    Item(name: 'Salt', price: 3000, merk: 'Kapal'),
    Item(name: 'Oil', price: 24000, merk: 'Bimoli'),
    Item(name: 'Rice', price: 55000, merk: 'Maknyuss'),
    Item(name: 'Soy sauce', price: 3000, merk: 'Bango'),
  ];
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50]
        ),
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(tempItem: item)),
                  );
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(child: Text(item.merk)),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
