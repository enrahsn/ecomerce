import 'package:ecommerce/models/data/data_source/static/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/core/class/app_route.dart';

abstract class BoardingCtrl extends GetxController {
  void onSkip();
  void onNext();
  @override
  void onInit();
  void onPageChanged(int i);
}

class BoardingCtrlImp extends BoardingCtrl {
  late PageController pageController;
  int currentPageIndex = 0;
  
  @override
  void onNext() {
    currentPageIndex++;
    if (currentPageIndex > onBoardingList.length -1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
    pageController.animateToPage(currentPageIndex,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    // throw UnimplementedError();
  }
  }


  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    // throw UnimplementedError();
  }
  //

  @override
  void onPageChanged(int i) {
    // TODO: implement onPageChanged
  }
  
  @override
  void onSkip() {
    // TODO: implement onSkip
  }
}
