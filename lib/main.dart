import 'package:ecommerce/models/core/localization/change_local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models/core/localization/trans.dart';
import 'models/core/route.dart';
import 'models/core/sevices/services.dart';
import 'views/screens/language.dart';
// import 'views/screens/on_boarding.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp( const Market());
}
class Market extends StatelessWidget {
          const Market({super.key, 

  });




  @override
  Widget build(BuildContext context) {
    LocaleCtrl localeCtrl = Get.put(LocaleCtrl());
    return GetMaterialApp(
      locale: localeCtrl.language,
      // fallbackLocale: const Locale('en', 'US'),
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Market',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        // headline1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black,),
        // headText1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColor.grey,height: 2),
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const MyLanguage(),
routes: routes,
    );
  }
}
/*
https://github.com/enrahsn/ecomerce_hmz.git
*/