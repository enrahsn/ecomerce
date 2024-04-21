import 'package:flutter/material.dart';

import '../constant/colors.dart';


class MyTitleAndTxt extends StatelessWidget {
    MyTitleAndTxt({
    this.title,
    this.txt
  });

final String? title;
final String? txt;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(title!,style: const TextStyle(fontSize: 20,color: kPrimaryColor),textAlign: TextAlign.center,),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            // child: const Text("Sign In With Your Email And Password Or Continue With Social Media ",
            child:  Text(txt!,
            style: const TextStyle(fontSize: 16,color: AppColor.black),textAlign: TextAlign.center,)),
          
      ],
    );
  }
}