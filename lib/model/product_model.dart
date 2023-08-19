import 'package:flutter/material.dart';

class ItemShop {
  String? pathPic;
  String? textItem;
  Icon? iconItem;
  String? price;

  ItemShop(
      {required this.pathPic,
      required this.textItem,
      required this.iconItem,
      required this.price});
}

List<ItemShop> dataShop = [
  ItemShop(
      pathPic: "assets/images/P1.jpg",
      textItem: "Camera",
      iconItem: const Icon(Icons.add_shopping_cart_outlined),
      price: "5,500"),
  ItemShop(
      pathPic: "assets/images/P2.jpg",
      textItem: "Skin",
      iconItem: const Icon(Icons.add_shopping_cart_outlined),
      price: "250"),
  ItemShop(
      pathPic: "assets/images/P3.jpg",
      textItem: "Iphone",
      iconItem: const Icon(Icons.add_shopping_cart_outlined),
      price: "32,000")
];
