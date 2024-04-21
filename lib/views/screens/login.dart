
import 'package:ecommerce/models/constant/colors.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            
          ],
          child: const Text("Login")),),
    );
  }
}