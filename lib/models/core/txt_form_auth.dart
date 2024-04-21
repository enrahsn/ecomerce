import 'package:flutter/material.dart';

import '../constant/colors.dart';

class MyTxtFormAuth extends StatelessWidget {
  const MyTxtFormAuth({
    Key? key,
    this.lbl,
    this.hint,
    this.icon,
    required this.maxLines,
    this.mycontroller,
  }) : super(key: key);
final String? lbl;
final String? hint;
 final IconData? icon;
  final int maxLines;
  final TextEditingController? mycontroller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      // validator: validator,
      // keyboardType: keyboardType,
      // obscureText: obscureText,
       maxLines: maxLines,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // hintText: hint!,
        hintText: 'email',
        hintStyle: const TextStyle(color: AppColor.grey, fontSize: 14),
        label: Container(
          // ignore: sort_child_properties_last
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: const Text('Email'),
          // child: Text(lbl!),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        // suffixIcon: const Icon(Icons.email_outlined),
        //  prefixIcon: Icon(
         suffixIcon: const 
            Icon(Icons.email_outlined,
            color: kMainColor,
          ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          // borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
