import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sevices/services.dart';

class LocaleCtrl extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  // public function index(){
  //       $this->view->render('locale/index');
  changeLang(String langcode) {
    // language = Locale(langcode);
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);
    // myServices.sharedPreferences.setBool('isLangSelected', true);
    // Get.updateLocale(Locale(langcode));
    Get.updateLocale(locale);
    // Get.back();
  }

@override
  void onInit() {
String? sharedPrefLang =myServices.sharedPreferences.getString('lang') ;
    if (sharedPrefLang == 'ar') {
      language = const Locale('ar');
    } else if (sharedPrefLang == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }

}
