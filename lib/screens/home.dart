import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

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
        child: SafeArea(
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
              ]),
        ),
      ),
    );
  }
}
