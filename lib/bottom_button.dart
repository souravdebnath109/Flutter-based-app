
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Bottombutton extends StatelessWidget {

  Bottombutton({required this.ontap,required this.buttontext});
  final Function ontap;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();  // Call the function like this
      },
      child: Container(
        child:Center(child: Text(buttontext,style: klargebuttontextstyle,)),
        color: kbottomcardcolour,
        margin: EdgeInsets.only(top: 5),
        width: double.infinity,
        height: bottomtab,
      ),
    );
  }
}