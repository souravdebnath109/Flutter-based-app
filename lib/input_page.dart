

import 'dart:ui';


import 'package:bmicalculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculatorbrain.dart';

enum Gender { male, female }

int height = 180;
int weight = 60;
int age=10;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kactivecardcolour
                        : kinactivecardcolour,
                    cardChild: Iconcontent(
                      icondemo: FontAwesomeIcons.mars,
                      textdemo: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kactivecardcolour
                        : kinactivecardcolour,
                    cardChild: Iconcontent(
                      icondemo: FontAwesomeIcons.venus,
                      textdemo: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kactivecardcolour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: ktextdemostyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kcommontextstyle),
                      Text(
                        'cm',
                        style: ktextdemostyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFFD0C52),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 24.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        //  activeColor: Color(0xFFFD0C52),
                        inactiveColor: Color(0xFFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
              // Pass null if there's no child widget
              onPress: () {}, // Provide an empty function if there's no action
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kactivecardcolour,

                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT', style: ktextdemostyle),
                        SizedBox(
                          height: 0,
                        ),
                        Text(weight.toString(), style: kcommontextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundiconbutton(
                              icon: Icons.add,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundiconbutton(
                                icon: Icons.remove,
                                onpressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                })
                          ],
                        )
                      ],
                    ), // Pass null if there's no child widget
                    onPress:
                        () {}, // Provide an empty function if there's no action
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kactivecardcolour,

                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: ktextdemostyle),
                        SizedBox(
                          height: 0,
                        ),
                        Text(age.toString(), style: kcommontextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundiconbutton(
                              icon: Icons.add,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundiconbutton(
                                icon: Icons.remove,
                                onpressed: () {
                                  setState(() {
                                    age--;
                                  });
                                })
                          ],
                        )
                      ],
                    ), // Pass null if there's no child widget
                    onPress:
                        () {}, // Provide an empty function if there's no action
                  ),
                ),
              ],
            ),
          ),


          // Bottombutton(buttontext: 'CALCULATE',ontap: (){
          //   CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);
          //
          //
          //
          //
          //   Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultPage(
          //       result_text:calc.getResult(),
          //       result_no:calc.calculateBMI(),
          //       result_interpret:calc.complementary(),
          //   )));
          // },),
          Bottombutton(
            buttontext: 'CALCULATE',
            ontap: () {
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

              String bmiResult = calc.calculateBMI();
              String resultText = calc.getResult();
              String interpretation = calc.complementary();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    result_text: resultText,
                    result_no: bmiResult,
                    result_interpret: interpretation,
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}


