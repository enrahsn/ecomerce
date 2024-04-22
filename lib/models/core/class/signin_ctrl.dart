import 'package:get/get.dart';

import 'app_route.dart';

abstract class SignUpCtrlr extends GetxController {
  signup();
  goToSignUp();
}

class SiginCtrlrImp extends SignUpCtrlr {
  @override
  goToSignUp() {
      Get.toNamed(AppRoutes.signup);

  }

  @override
  signup() {
    
  }

}
