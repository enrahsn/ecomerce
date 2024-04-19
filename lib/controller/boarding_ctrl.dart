
import 'package:get/get.dart';

abstract class BoardingCtrl extends GetxController {
  void onSkip();
  void onNext();
  void onDone();
  void onPageChanged(int i);
}
class BoardingCtrlImp extends BoardingCtrl {
  int currentPageIndex = 0;
  // PageController pageController = PageController(); 
  @override
  void onSkip() {
    // Get.offAllNamed();// TODO: implement onSkip
    throw UnimplementedError();
  }
    
      @override
      void onDone() {
    // TODO: implement onDone
    throw UnimplementedError();
      }
    
      @override
      void onNext() {
    // TODO: implement onNext
    throw UnimplementedError();
      }
    
      @override
      void onPageChanged(int i) {
currentPageIndex = i;
update();
    throw UnimplementedError();
      }
    }