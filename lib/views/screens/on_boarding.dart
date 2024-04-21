import 'package:ecommerce/models/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/boarding_ctrl.dart';
import '../../models/core/onboarding/button.dart';
import '../../models/core/button_txt.dart';
import '../../models/core/onboarding/dot_boarding.dart';
import '../../models/core/onboarding/slider.dart';

class OnBoarding extends GetView<BoardingCtrlImp> {
  const OnBoarding({
    super.key,
  });
  // double hZise = 30;
  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    double scrWidth = MediaQuery.of(context).size.width;

    Get.put(BoardingCtrlImp());
    return Scaffold(
      backgroundColor: AppColor.backgrond,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: MySlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const MyDotBoarding(),
                  // Buttony(txt: 'Continue',),
                  // Buttony(txt: 'Continue',onPressed: () {controller.onNext();},),
                  // MyButton(txt: 'Continue',),
                  // MyButton(txt: 'Continue',onPressed: () {controller.onNext();},),
                  // Spacer(),

                  const SizedBox(
                    height: 20,
                  ),
                  // /*
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      border: Border.all(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(scrWidth * .02),
                    ),
                    child: MaterialButton(
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(scrWidth * .02)),
                      onPressed: () {
                        controller.onNext();
                      },
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                      // controller.onNext();
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          
                            color: Colors.white,
                            backgroundColor: kPrimaryColor,
                            // fontSize: scrWidth * .04,p
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // */
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
