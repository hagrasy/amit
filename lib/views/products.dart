import 'package:flutter/material.dart';

import '../model/product_model.dart';

// ignore: must_be_immutable
class Products extends StatelessWidget {
  ItemShop? itemShop;
  Products({super.key, required this.itemShop});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: ListTile(
          leading: Image.asset(
            "${itemShop!.pathPic}",
            height: 50,
            width: 50,
          ),
          title: Text("${itemShop!.textItem}"),
          subtitle: Text("${itemShop!.price}"),
          trailing: const Icon(Icons.add_shopping_cart_outlined),
        )));
  }
}
