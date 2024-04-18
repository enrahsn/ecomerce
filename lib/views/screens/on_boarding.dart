
import 'package:ecommerce/models/data/data_source/static/index.dart';
import 'package:ecommerce/models/data/data_source/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
          children: [
            Text(
          onBoardingList[i].title!,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        ]
        ),
        ),
      ),
    );
  }

}