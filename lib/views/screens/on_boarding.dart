import 'package:ecommerce/models/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/boarding_ctrl.dart';
import '../../models/core/OnBoarding/boarding_btn.dart';
import '../../models/core/OnBoarding/dot_boarding.dart';
import '../../models/core/OnBoarding/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
  });

  // double hZise = 30;
  @override
  Widget build(BuildContext context) {
    Get.put(BoardingCtrlImp());
    return const Scaffold(
      backgroundColor: AppColor.backgrond,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: MySlider()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  MyDotBoarding(),
                  Spacer(
                    flex: 2,
                  ),
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
