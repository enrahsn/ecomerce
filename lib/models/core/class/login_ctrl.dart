import 'package:get/get.dart';

import 'app_route.dart';

abstract class LoginCtrlr extends GetxController {
  login();
  goToSignUp();
}

class LoginCtrlrImp extends LoginCtrlr {
  @override
  
goToSignUp(){
  // Get.toNamed(AppRoutes.signIn);
  Get.toNamed(AppRoutes.signup);
// throw UnimplementedError();
}    
  

  @override
  login() {
   
// throw UnimplementedError();
  }

}
