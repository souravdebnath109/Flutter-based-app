import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/bottom_button.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.result_text,required this.result_no,required this.result_interpret});

  final String result_text;
  final String result_no;
  final String result_interpret;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALCULATOR')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Expanded(

                child: Container(
                  padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                'YOUR RESULT IS :',
                style: ktitletextstyle,

              ),
            )),
            Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(25.0),
                    color: kactivecardcolour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(result_text.toUpperCase(), style: kresulttextstyle),
                        Text(
                          result_no,
                          style: kbmi_result_no_style,
                        ),
                        Text(
                          result_interpret,
                          style: kbmi_details_style,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ))),
            Bottombutton(
                ontap: () {
                  Navigator.pop(context);
                },
                buttontext: 'RECALCULATE')
          ],
        ));
  }
}
