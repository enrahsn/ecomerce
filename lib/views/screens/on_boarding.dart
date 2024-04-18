
import 'package:ecommerce/models/constant/colors.dart';
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
          // style: Theme.of(context).textTheme.displayMedium,
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        const SizedBox(height: 50,),
        Image.asset(onBoardingList[i].image!,height: 600,fit: BoxFit.cover,),
        const SizedBox(height: 50,),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(onBoardingList[i].description!,textAlign: TextAlign.center,
          style:const TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 17),)),
        ]
        ),
        ),
      ),
    );
  }

}