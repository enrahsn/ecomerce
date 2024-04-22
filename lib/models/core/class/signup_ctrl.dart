import 'package:get/get.dart';

import 'app_route.dart';

abstract class SignUpCtrlr extends GetxController {
  signup();
  goToLogIn();
}

class SigUpCtrlrImp extends SignUpCtrlr {
  @override
  goToLogIn() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  signup() {
   
  }


}
