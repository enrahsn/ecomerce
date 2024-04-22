import 'package:get/get.dart';

abstract class LoginCtrlr extends GetxController {
  login();
  goToSignUp();
}

class LoginCtrlrImp extends LoginCtrlr {
  @override
  
goToSignUp(){
  Get.toNamed(AppRoutes.signUp);
// throw UnimplementedError();
}    
  

  @override
  login() {
   
// throw UnimplementedError();
  }

}
