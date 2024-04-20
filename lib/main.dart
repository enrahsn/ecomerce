import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/constant/colors.dart';
import 'models/core/route.dart';
import 'views/screens/on_boarding.dart';
void main() {
  runApp(const Market());
}
class Market extends StatelessWidget {
      const Market({super.key, 

  });


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market',
      theme: ThemeData(
        headline1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black,),
        headText1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColor.grey,height: 2),
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        fontFamily: 'Cairo',
        useMaterial3: true,
      ),
      home: const OnBoarding(),
routes: routes,
    );
  }
}
/*
https://github.com/enrahsn/ecomerce_hmz.git
*/