
import 'package:flutter/material.dart';

import '../../models/core/title_txt.dart';
import '../../models/core/txt_form_auth.dart';
// import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,elevation: 0,
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
      backgroundColor: Colors.white,
      title: const Text('Sign In',style: TextStyle(color: Colors.black),),) ,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 35),
        child: ListView(
          children: [
          const SizedBox(height: 20,),
          MyTitleAndTxt(title: 'Welcom Back',txt: 'Sign In With Your Email And Password Or Continue With Social Media ',),
          // const Text("2".tr),
         const SizedBox(height: 65,),
        // const MyTxtField(hint: 'email'),
        const MyTxtFormAuth(hint: 'Enter Your Email',lbl: 'Email',icon: Icons.email_outlined,),
        const SizedBox(height: 30,),
        const MyTxtFormAuth(hint: 'Enter Your Passwoed',lbl: 'Password',icon: Icons.lock_clock_outlined),
        // const MyTxtField(hint: 'password'),
          ],
          ),),
    );
  }
}