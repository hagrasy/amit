import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:note_app/model/item_model.dart';

import '../views/items.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> image = [
    "assets/images/1.jpg",
    "assets/images/2.png",
    "assets/images/3.jpeg",
  ];
  List<String> data2 = ["Pizza", "Burger", "Crapes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
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
                        itemCount: 3,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                    width: 25,
                  ),
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: 800,
                      width: 400,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, int index) {
                          return Items(
                            itemProduct: dataItem[index],
                          );
                        },
                        separatorBuilder: (context, int index) =>
                            const Divider(color: Colors.red),
                        itemCount: dataItem.length,
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
