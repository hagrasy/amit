import 'dart:async';
import 'package:flutter/material.dart';
import 'package:note_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200))
      ..repeat(reverse: true);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    Timer(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeTransition(
          opacity: animation,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/amit.png',
              width: 85,
              height: 85,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Column(
          children: [
            Text(
              "AMIT",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
            ),
            Text(
              "Session 50",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ],
    )));
  }
}
