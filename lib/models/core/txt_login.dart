import 'package:flutter/material.dart';
import '../constant/colors.dart';
class MyTextLogin extends StatelessWidget {
  final String txt;
  final String login;
  // final String destinationPage;
  final void Function() onTap;
  const MyTextLogin({super.key, required this.txt, required this.login, required this.onTap});
  // const MyTextLogin({super.key, required this.txt, required this.login, required this.destinationPage,});
  @override
  Widget build(BuildContext context) {
    // double scrHeight = MediaQuery.of(context).size.height; //افضل حل (حتى الان)
    // double scrWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(txt),
        // Text("Don't have an account ? "),
        const Spacer(),
        // SizedBox(width: 150,),
        // TextButton(onPressed: (){}, child: const Text('Sign Up')),
        InkWell(
          // onTap: onTap,
            // destinationPage:AppRoute.signUp,
          // onTap: () {Navigator.pushNamed(context, destinationPage);},
          onTap: onTap,
          child: Text(
            // "Sign Up",
            login,
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
      ],
    );
    /* MaterialButton(
      onPressed: () {},
      child: Text(txt),
    );
    Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                txt!,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: scrWidth * .03,
                ),
              ),
               SizedBox(width:scrWidth * .05),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, SignupScr.id);
                  Navigator.pushNamed(context, scrName!);
                },
                child: Text(
                  login!,
                  style: TextStyle(color: kSecColor, fontSize: scrWidth * .045),
                ),
              ),
            ],
          );
*/
  }
}
