
import 'package:ecommerce/models/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../models/core/txt_field.dart';
import '../../models/core/txt_form_auth.dart';
// import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // theme: ThemeData(
      //   fontFamily: 'PlayfairDisplay',
      //   // headline1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black,),
      //   // headText1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColor.grey,height: 2),
      //   primarySwatch: Colors.blue,
      //   brightness: Brightness.dark,
      //   useMaterial3: true,
      // ),
      appBar:AppBar(centerTitle: true,elevation: 0,
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
      backgroundColor: Colors.white,
      title: const Text('Sign In',style: TextStyle(color: Colors.black),),) ,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 35),
        child: ListView(
          children: [
          const SizedBox(height: 20,),
          // const Text("2".tr),
          const Text("Welome Back",style: TextStyle(fontSize: 20,color: AppColor.black),textAlign: TextAlign.center,),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text("Sign In With Your Email And Password Or Continue With Social Media ",
            style: TextStyle(fontSize: 16,color: AppColor.black),textAlign: TextAlign.center,)),
          const SizedBox(height: 65,),
        // const MyTxtField(hint: 'email'),
        const MyTxtFormAuth(),
           const SizedBox(height: 10,),
        const MyTxtFormAuth(),
        // const MyTxtField(hint: 'password'),
          ],
          ),),
    );
  }
}