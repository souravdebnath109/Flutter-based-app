import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';




class Iconcontent extends StatelessWidget {
  Iconcontent({required this.icondemo,required this.textdemo });
  final IconData icondemo;
  final String textdemo;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icondemo, size: 50),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textdemo,
          style:ktextdemostyle ,
        )
      ],
    );
  }
}
