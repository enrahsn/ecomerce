import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/core/class/login_ctrl.dart';
import '../../models/core/logo_h.dart';
import '../../models/core/onboarding/button_h.dart';
import '../../models/core/title_txt.dart';
import '../../models/core/txt_form_auth.dart';
import '../../models/core/txt_login.dart';

// import 'package:get/get.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    LoginCtrlrImp controller = Get.put(LoginCtrlrImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        backgroundColor: Colors.white,
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        child: ListView(children: [
          // Image.asset('assets/images/r.png'),
          const MyLogo(
            txt: 'rady',
          ),
          const SizedBox(
            height: 10,
          ),
          MyTitleAndTxt(
            title: 'Welcom Back',
            txt:
                'Sign In With Your Email And Password Or Continue With Social Media ',
          ),
          // const Text("2".tr),
          const SizedBox(
            height: 35,
          ),
          // const MyTxtField(hint: 'email'),
          const MyTxtFormAuth(
            hint: 'Enter an Username',
            lbl: 'Username',
            icon: Icons.person,
          ),
          const SizedBox(
            height: 30,
          ),
          const MyTxtFormAuth(
            hint: 'Enter an Email',
            lbl: 'Email',
            icon: Icons.email_outlined,
          ),
          const SizedBox(
            height: 30,
          ),
          const MyTxtFormAuth(
              hint: 'Enter a Strong Unique Passwoed',
              lbl: 'Password',
              icon: Icons.key),
          const SizedBox(
            height: 30,
          ),
          const MyTxtFormAuth(
              hint: 'Reenter the same Passwoed',
              lbl: 'Password',
              icon: Icons.key),
          const SizedBox(
            height: 30,
          ),
          // const MyTextLogin(txt: 'Forget Password', login: 'go to  ',scrName: 'Sign up',),
          // const Text(
          //   'Forget Password',
          //   textAlign: TextAlign.end,
          // ),
          HyButton(txt: 'Sign Up', onPressed: () {}),
          const SizedBox(
            height: 30,
          ),
          MyTextLogin(
              txt: "Don You have an account ? ",
              login: "Sign In",
              // scrName:SignUp ,
              // destinationPage: AppRoute.signUp,
              // onTap : () {Get.toNamed(AppRoute.signUp);},
              onTap: () {
                controller.goToSignIn();
              })
        ]),
      ),
    );
  }
}
