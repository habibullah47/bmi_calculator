import 'dart:async';

import 'package:bmi_calculator/components/bmi_brain.dart';
import 'package:bmi_calculator/components/count_button.dart';
import 'package:bmi_calculator/components/drawer_widget.dart';
import 'package:bmi_calculator/components/re_usable_widget.dart';
import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

enum Gender {
  male,
  female,
}

class InputP extends StatefulWidget {
  const InputP({Key? key}) : super(key: key);

  @override
  State<InputP> createState() => _InputPState();
}

class _InputPState extends State<InputP> {
  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kInactiveColor;

  //? this question mark take a lot of attention.
  Gender? selectedGender;
  int height = 172;
  int weight = 50;
  int age = 30;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'lightTheme';
    return Scaffold(
      appBar: AppBar(
        title: Text('🪡 haZa $text BMI Calculator'),
        centerTitle: true,
      ),
      drawer: const ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
        child: DrawerWidget(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GenderWidget(
                          propertyColor: selectedGender == Gender.male
                              ? kInactiveColor
                              : kActiveColor,
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                          onPressed: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          })),
                  Expanded(
                    child: GenderWidget(
                        propertyColor: selectedGender == Gender.female
                            ? kInactiveColor
                            : kActiveColor,
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReUsableWidget(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('HEIGHT', style: kStyleoftext),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(), style: kStyleheavyText),
                              const Text(
                                'cm',
                                style: kStyleoftext,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: const SliderThemeData().copyWith(
                              trackHeight: 25,
                              activeTrackColor: kBottomContainerColor,
                              inactiveTrackColor: Colors.greenAccent.shade100,
                              overlayColor: const Color(0x3dFED302),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30),
                              thumbColor: Colors.yellow.shade700,
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 20,
                                  elevation: 5,
                                  pressedElevation: 10),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.00,
                              max: 240.00,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      propertyColor: kActiveColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReUsableWidget(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT', style: kStyleoftext),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(weight.toString(), style: kStyleheavyText),
                              const Text('kg', style: kStyleoftext)
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CountButton(
                                iconWidget: const Icon(FontAwesomeIcons.minus),
                                onLongPress: () {
                                  timer = Timer.periodic(
                                      const Duration(milliseconds: 300),
                                      (timer) {
                                    setState(() {
                                      weight--;
                                    });
                                  });
                                },
                                onPress: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                },
                                onLongPressEnd: (details) {
                                  timer?.cancel();
                                },
                              ),
                              const SizedBox(width: 15),
                              CountButton(
                                iconWidget: const Icon(FontAwesomeIcons.plus),
                                onLongPress: () {
                                  timer = Timer.periodic(
                                      const Duration(milliseconds: 300),
                                      (timer) {
                                    setState(() {
                                      weight++;
                                    });
                                  });
                                },
                                onPress: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                },
                                onLongPressEnd: (details) {
                                  timer?.cancel();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      propertyColor: kActiveColor,
                    ),
                  ),
                  Expanded(
                    child: ReUsableWidget(
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE', style: kStyleoftext),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(age.toString(), style: kStyleheavyText),
                              // const Text('yr', style: kStyleoftext)
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CountButton(
                                iconWidget: const Icon(FontAwesomeIcons.minus),
                                onLongPress: () {
                                  timer = Timer.periodic(
                                      const Duration(milliseconds: 300),
                                      (timer) {
                                    setState(() {
                                      age--;
                                    });
                                  });
                                },
                                onPress: () {
                                  setState(
                                    () {
                                      age--;
                                    },
                                  );
                                },
                                onLongPressEnd: (details) {
                                  timer?.cancel();
                                },
                              ),
                              const SizedBox(width: 15),
                              CountButton(
                                iconWidget: const Icon(FontAwesomeIcons.plus),
                                onLongPress: () {
                                  timer = Timer.periodic(
                                      const Duration(milliseconds: 300),
                                      (timer) {
                                    setState(() {
                                      age++;
                                    });
                                  });
                                },
                                onPress: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
                                },
                                onLongPressEnd: (details) {
                                  timer?.cancel();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      propertyColor: kActiveColor,
                    ), //: Colors.lightBlueAccent,),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                BMIBrain calc = BMIBrain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmiResult: calc.calculateBMI().toStringAsFixed(1),
                              interpretation: calc.getInterpretation(),
                              resultTitle: calc.getResult(),
                            )));
                //calc need for getting information from BMIBrain to use in ResultPage()
              },
              child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  color: kBottomContainerColor,
                  //const Color(0xffeb1555),
                  margin: const EdgeInsets.only(top: 10),
                  height: kBottomContainerHeight,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'CALCULATE',
                        style: kBottomTextStyle,
                      ),
                      Divider(
                        color: Colors.blueGrey,
                        thickness: 0.5,
                        height: 2,
                        indent: 120,
                        endIndent: 120,
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.blueGrey,
                        thickness: 0.5,
                        height: 2,
                        indent: 150,
                        endIndent: 150,
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.blueGrey,
                        thickness: 0.5,
                        height: 2,
                        indent: 180,
                        endIndent: 180,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
