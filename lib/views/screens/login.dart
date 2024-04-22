
import 'package:flutter/material.dart';

import '../../models/core/logo_h.dart';
import '../../models/core/onboarding/button_h.dart';
import '../../models/core/title_txt.dart';
import '../../models/core/txt_form_auth.dart';
import '../../models/core/txt_login.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 30),
        child: ListView(
          children: [
            // Image.asset('assets/images/r.png'),
             const MyLogo(txt: 'rady',),
            // const MyLogo(txt: 'rady', img:  AssetImage(AppImgAssets.logo), ),
            // const MyLogo(txt: 'rady', img:  AssetImage(AppImgAssets.store), ),
            // const MyLogo(txt: 'rady', img:  AssetImage(AppImgAssets.market), ),
            // const MyLogo(txt: 'rady', img:  AssetImage(AppImgAssets.logo), ),
            // const MyLogo(txt: 'rady', img:  AssetImage(AppImgAssets.eng), ),
            // const MyLogo(txt: 'rady', img:  AssetImage('assets/images/r.png'), ),
            //  Image.asset(onBoardingList[i].image!,
            //  MyLogo(txt: 'rady', img:  Image.asset(AppImgAssets(logo)), ),
            //  MyLogo(txt: 'rady', img:  Image.asset('assets/images/logo.png'), ),
            //  MyLogo(txt: 'rady', img:  Image.asset(AppImgAssets.logo), ),
            // const MyLogo( img:  AssetImage('assets/images/r.png'), ),
            //  Image(image: const AssetImage('assets/images/r.png'),
          // width: 200,
         
        
          const SizedBox(height: 10,),
          MyTitleAndTxt(title: 'Welcom Back',txt: 'Sign In With Your Email And Password Or Continue With Social Media ',),
          // const Text("2".tr),
         const SizedBox(height: 35,),
        // const MyTxtField(hint: 'email'),
        const MyTxtFormAuth(hint: 'Enter Your Email',lbl: 'Email',icon: Icons.email_outlined,),
        const SizedBox(height: 30,),
        const MyTxtFormAuth(hint: 'Enter Your Passwoed',lbl: 'Password',icon: Icons.lock_clock_outlined),
        const SizedBox(height: 30,),
        const MyTextLogin(txt: 'Forget Password', login: 'go to  ',scrName: 'Sign up',),
        const MyButton(txt: 'Sign Up',),
          ],
          ),),
    );
  }
}