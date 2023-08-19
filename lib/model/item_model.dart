import 'package:flutter/material.dart';

class ItemProduct {
  String? pathPic;
  String? textItem;
  Icon? iconItem;
  String? price;

  ItemProduct(
      {required this.pathPic,
      required this.textItem,
      required this.iconItem,
      required this.price});
}

List<ItemProduct> dataItem = [
  ItemProduct(
    pathPic: "assets/images/1.jpg",
    textItem: "Flower",
    iconItem: const Icon(Icons.favorite_border, color: Colors.green),
    price: "75",
  ),
  ItemProduct(
    pathPic: "assets/images/3.jpeg",
    textItem: "Pizza",
    iconItem: const Icon(Icons.favorite_border, color: Colors.green),
    price: "100",
  ),
  ItemProduct(
    pathPic: "assets/images/2.png",
    textItem: "Headset",
    iconItem: const Icon(Icons.favorite_border, color: Colors.green),
    price: "200",
  )
];
