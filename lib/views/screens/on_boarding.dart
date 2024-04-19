import 'package:flutter/material.dart';

import '../widgets/OnBoarding/boarding_btn.dart';
import '../widgets/OnBoarding/dot_boarding.dart';
import '../widgets/OnBoarding/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key, });

  // double hZise = 30;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3,
              child: MySlider()
            ),
        Expanded(flex: 1,
                child: Column(children: [
      MyDotBoarding(),
                Spacer(flex: 2,),
              MyBoardingBtn(),
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
