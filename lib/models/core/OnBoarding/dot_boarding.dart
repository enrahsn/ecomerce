import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/boarding_ctrl.dart';
import '../../../models/constant/colors.dart';
import '../../../models/data/data_source/static/static.dart';

class MyDotBoarding extends StatelessWidget {
  const MyDotBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BoardingCtrlImp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        margin: const EdgeInsets.only(right: 5),
                        width:  controller.currentPageIndex== index ? 8 : 5,
                        height: controller.currentPageIndex== index ? 8 : 5,
                        decoration: BoxDecoration(
                            // color: _currentPage ==index ? AppColor.primary : AppColor.grey,
                            color: controller.currentPageIndex== index ? kStopColor : kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      )),
            ]),);
  }
}
