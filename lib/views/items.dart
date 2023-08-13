import 'package:flutter/material.dart';

import '../model/item_model.dart';

// ignore: must_be_immutable
class Items extends StatelessWidget {
  ItemProduct? itemProduct;
  Items({super.key, required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 130,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: ListTile(
          leading: Image.asset(
            "${itemProduct!.pathPic}",
            height: 50,
            width: 50,
          ),
          title: Text("${itemProduct!.textItem}"),
          subtitle: Text("${itemProduct!.price}"),
          trailing: const Icon(Icons.favorite_border),
        )));
  }
}
