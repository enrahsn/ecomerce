import 'package:flutter/material.dart';
import '../../models/constant/img_assets.dart';

import '../constant/colors.dart';



class MyLogo extends StatelessWidget {
  const MyLogo({super.key,  this.txt, this.img, });
final String? txt;
  // final IconData img;
    final ImageProvider? img;

  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    // double scrWidth = MediaQuery.of(context).size.width;
              print(scrHeight* 0.29);
    return Padding(
      padding: EdgeInsets.only(top: scrHeight * .05,
       bottom: scrHeight * .01,),
      // SizedBox(height: scrHeight * .17,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(AppImgAssets.eng,
            // img,
            // Image.asset(AppImgAssets.logo,
            // Image.asset(AppImgAssets.store,
            // Image.asset(AppImgAssets.market,
            
              height: scrHeight * 0.25,),
          const Spacer(),
            // SizedBox(height: scrHeight * .02 ),
            Positioned(
              bottom: 0,
              child: Text(
              txt!,
                style: TextStyle(color: kBgColor,fontFamily: 'Pacifico', fontSize: scrHeight * .04,fontWeight: FontWeight.bold),
              ),
            ),
            // ),
          ],
        ),
    );
  }
}
