
import 'package:get/get.dart';

abstract class BoardingCtrl extends GetxController {
  void onSkip();
  void onNext();
  void onDone();
  void onPageChanged(int i);
}
class BoardingCtrlImp extends BoardingCtrl {
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
    // TODO: implement onPageChanged
    throw UnimplementedError();
      }
    }