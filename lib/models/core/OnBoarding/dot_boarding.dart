
import 'package:flutter/material.dart';

import '../../../models/constant/colors.dart';
import '../../../models/data/data_source/static/static.dart';

class MyDotBoarding extends StatelessWidget {
  const MyDotBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                ...List.generate(onBoardingList.length, 
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                margin: const EdgeInsets.only(right: 5),
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  // color: _currentPage ==index ? AppColor.primary : AppColor.grey,
                  color:  kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                )),
                ]              );
  }
}