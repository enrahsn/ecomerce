import 'package:flutter/material.dart';
import '../../constant/colors.dart';
 class HyButton extends StatelessWidget {
  // MyButton({super.key, this.txt, Function()? onPressed});
  final String txt;
  final void Function()? onPressed;
  const HyButton({super.key, required this.txt, this.onPressed});
  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    double scrWidth  = MediaQuery.of(context).size.width;
   
    return  MaterialButton(
      onPressed:onPressed,
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                    // controller.onNext();
                    color: kAppbarColor,
    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(scrWidth * .02)
                    ),
                    child: Text(txt,
                    style: TextStyle(
    fontSize: scrWidth * .029,
    fontWeight: FontWeight.bold
                    ),
                    ),
                    );
  }
}
 /*
Container(
                padding: EdgeInsets.symmetric(horizontal: scrWidth * .1,vertical: scrHeight * .071),
                // width: double.infinity,
                width: scrWidth * .71,
                  height: scrHeight * .071,
                  margin: const EdgeInsets.only(bottom: 30),
                  // child: MaterialButton(onPressed: () {},
                  child: MaterialButton(
                    onPressed:onPressed,
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                // controller.onNext();
                color: kAppbarColor,
                  textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(scrWidth * .02)
                ),
                child: Text(txt,
                style: TextStyle(
                  fontSize: scrWidth * .04,
                  fontWeight: FontWeight.bold
                ),
                ),
                ),
                );
 */