import 'package:flutter/material.dart';

class MyLanguage extends StatelessWidget {
  const MyLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(children: [
          Padding:EdgeInsets.symmetric(horizontal:100),
          Text("Choose your language",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ],),
      ),
    )
  }
}
