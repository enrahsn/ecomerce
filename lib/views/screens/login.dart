
import 'package:ecommerce/models/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
      backgroundColor: kBg1Color,
      title: const Text('Sign In',style: TextStyle(color: Colors.amber),),) ,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
          const SizedBox(height: 20,)
          // const Text("2".tr),
          const Text("Welome Back",textAlign: TextAlign.center,),

          ],
          ),),
    );
  }
}