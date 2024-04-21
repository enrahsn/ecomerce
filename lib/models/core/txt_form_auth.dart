import 'package:flutter/material.dart';

import '../constant/colors.dart';

class MyTxtFormAuth extends StatelessWidget {
  const MyTxtFormAuth({
    super.key,
    this.lbl,
    this.hint,
    this.icon,
     this.maxLines=1,
    this.mycontroller,
  });
final String? lbl;
final String? hint;
 final IconData? icon;
  final int maxLines;
  final TextEditingController? mycontroller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: mycontroller,
        // validator: validator,
        // keyboardType: keyboardType,
        // obscureText: obscureText,
         maxLines: maxLines,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint!,
          // hintText: 'email',
          hintStyle: const TextStyle(color: AppColor.grey, fontSize: 14),
          label: Container(
            // ignore: sort_child_properties_last
            margin: const EdgeInsets.symmetric(horizontal: 8),
            // child: const Text('Email'),
            child: Text(lbl!),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          //  prefixIcon: Icon(
           suffixIcon:           Icon(icon),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            // borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
