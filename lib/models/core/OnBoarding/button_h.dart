
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/boarding_ctrl.dart';
import '../../constant/colors.dart';

 class MyButton extends GetView<BoardingCtrlImp> {
  // MyButton({super.key, this.txt, Function()? onPressed});
  const MyButton({super.key, required this.txt, this.onPressed});
  final void Function()? onPressed;
  //
 final String? txt;
  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    double scrWidth  = MediaQuery.of(context).size.width;
   
    return  Container(
                padding: EdgeInsets.symmetric(horizontal: scrWidth * .1,vertical: scrHeight * .071),
                // width: double.infinity,
                width: scrWidth * .71,
                  height: scrHeight * .071,
                  margin: const EdgeInsets.only(bottom: 30),
                  // child: MaterialButton(onPressed: () {},
                  child: MaterialButton(
                    onPressed:onPressed,
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                // controller.onNext();
                color: kPrimaryColor,
                  textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(scrWidth * .02)
                ),
                child: Text(txt!,
                style: TextStyle(
                  fontSize: scrWidth * .04,
                  fontWeight: FontWeight.bold
                ),
                ),
                ),
                );
  }
}
 