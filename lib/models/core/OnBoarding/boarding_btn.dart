
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/boarding_ctrl.dart';
import '../../../models/constant/colors.dart';

class MyBoardingBtn extends GetView<BoardingCtrlImp> {
  const MyBoardingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 40,
                  child: MaterialButton(onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                },
                padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 4),
                color: kPrimaryColor,
                  textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Text("Continue",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
                ),
                );
  }
}