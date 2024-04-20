import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/boarding_ctrl.dart';
import '../../../models/constant/colors.dart';
import '../../../models/data/data_source/static/static.dart';

class MySlider extends GetView<BoardingCtrlImp> {
    const MySlider({super.key, 

  });
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        // controller.changeIndex(val);
        controller.onPageChanged(val);
        print(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          onBoardingList[i].title!,
          // style: Theme.of(context).textTheme.displayMedium,
          // style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          // style: Theme.of(context).textTheme.displayLarge,
          // headline1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black,),
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.black,),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          onBoardingList[i].image!,
          // width: 200,
          height: 230,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].description!,
              textAlign: TextAlign.center,
        // headText1:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColor.grey,height: 2),
        style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColor.grey,height: 2),
          // style: Theme.of(context).textTheme.displaySmall,
            )),
        // const SizedBox(height: 10),
      ]),
    );
  }
}
