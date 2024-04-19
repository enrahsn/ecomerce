import 'package:ecommerce/models/data/data_source/static/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    pageController.animateToPage(currentPageIndex,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    // throw UnimplementedError();
  }

  @override
  void onPageChanged(int i) {
    currentPageIndex = i;
    update();
    // throw UnimplementedError();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    // throw UnimplementedError();
  }
  // PageController pageController = PageController();
  @override
  void onSkip() {
    // Get.offAllNamed();// TODO: implement onSkip
    throw UnimplementedError();
  }
}

  @override
  void onPageChanged(int i) {
    // TODO: implement onPageChanged
  }

  @override
  void onSkip() {
    // TODO: implement onSkip
  }
}
