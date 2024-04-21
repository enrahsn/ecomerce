import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/size_config.dart';

class Buttony extends StatelessWidget {
  final void Function()? onPressed;  
  final String? txt;

  const Buttony({super.key, this.onPressed, this.txt});
  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    double scrWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: scrWidth * .1),
      child: Container(
        // width: SizeConfig.scrWidth,
        width: scrWidth * .71,
         child: MaterialButton(
                    onPressed:onPressed,
        height: scrHeight * .071,
        // decoration: BoxDecoration(
        //   color: kMainColor,
        //   borderRadius: BorderRadius.circular(scrWidth * .02),
        // ),
        child: Center(
          child: Text(
            txt!,
            style: TextStyle(
              fontSize: scrWidth * .045,
              color: kTextColor,
              // fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          ),
        ),
      ),
    );
  }
}
