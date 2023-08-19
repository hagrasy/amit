import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:note_app/model/item_model.dart';
import 'package:note_app/views/products.dart';
import 'package:note_app/model/product_model.dart';
import '../views/items.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> image = [
    "assets/images/1.jpg",
    "assets/images/2.png",
    "assets/images/3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(image[index]);
                        },
                        autoplay: true,
                        itemCount: 3,
                        pagination:
                            const SwiperPagination(margin: EdgeInsets.all(15)),
                        control: const SwiperControl(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 200,
                      width: 400,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, int index) {
                          return Items(
                            itemProduct: dataItem[index],
                          );
                        },
                        separatorBuilder: (context, int index) =>
                            const Divider(color: Colors.red),
                        itemCount: dataItem.length,
                      )),
                  const SizedBox(
                    height: 25,
                    width: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Products",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 100,
                      width: 700,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int index) {
                          return Products(
                            itemShop: dataShop[index],
                          );
                        },
                        separatorBuilder: (context, int index) =>
                            const SizedBox(
                          width: 10,
                        ),
                        itemCount: dataShop.length,
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
