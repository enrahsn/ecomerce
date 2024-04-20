import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyServices extends GetxService {
  late final SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
}
}
initServices() async {
  await Get.putAsync(() => MyServices().init());
}