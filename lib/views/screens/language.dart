import 'package:ecommerce/models/core/localization/change_local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/core/class/app_route.dart';
import '../../models/core/onboarding/button_h.dart';

class MyLanguage extends GetView<LocaleCtrl> {
  const MyLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Choose your language",
              // style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              style: TextStyle(fontSize: 16, ),
            ),
            // const Spacer(),
            // const Text("1".tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              // width: double.infinity,
              child: HyButton(
                txt: 'English',
                onPressed: () {
                  controller.changeLang('en');
                  Get.toNamed(AppRoutes.onboarding);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              // width: double.infinity,
              child: HyButton(
                txt: 'عربي',
                onPressed: () {
                  controller.changeLang('ar');
                  Get.toNamed(AppRoutes.onboarding);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
