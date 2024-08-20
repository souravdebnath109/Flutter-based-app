
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({required this.icon, required this.onpressed});

  final IconData icon;
  final Function onpressed;

  // const Roundiconbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onpressed();
      },
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      shape: CircleBorder(),
    );
  }
}
