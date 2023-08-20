import 'package:flutter/material.dart';
import 'package:note_app/model/onboarding_model.dart';
import 'package:note_app/widgets/default_text.dart';

import '../views/item_onboarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {},
                child: DefaultText(
                  text: "Skip",
                  color: Colors.teal,
                  fontSize: 15,
                ))
          ],
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: PageView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      //                   OnBoardingItem(onBoardingModel: itemOnBoard[index])),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // );

                      Image.asset(OnBoardingModel!.image),
                  SizedBox(
                    height: 10,
                  ),
                ))
              ],
            )));
  }
}
