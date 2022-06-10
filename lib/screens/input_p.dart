import 'package:bmi_calculator/components/re_usable_widget.dart';
import 'package:bmi_calculator/widgets/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/color_and_text.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A new edge BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReUsable_Widget(
                        propertyColor: selectedGender == Gender.male
                            ? kInactiveColor
                            : kActiveColor,
                        childWidget: const ColorText(
                          label: 'MALE',
                          icon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReUsable_Widget(
                        propertyColor: selectedGender == Gender.female
                            ? kInactiveColor
                            : kActiveColor,
                        childWidget: const ColorText(
                          label: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReUsable_Widget(
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
                    child: ReUsable_Widget(
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
                              RawMaterialButton(
                                fillColor: kBottomContainerColor,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                constraints: const BoxConstraints(
                                    minHeight: 60.00, minWidth: 56.00),
                                child: const Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(
                                    () {
                                      weight--;
                                    },
                                  );
                                },
                              ),
                              const SizedBox(width: 15),
                              RawMaterialButton(
                                fillColor: kBottomContainerColor,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                constraints: const BoxConstraints(
                                    minHeight: 60.00, minWidth: 56.00),
                                child: const Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
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
                    child: ReUsable_Widget(
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
                              RawMaterialButton(
                                fillColor: kBottomContainerColor,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                constraints: const BoxConstraints(
                                    minHeight: 60.00, minWidth: 56.00),
                                child: const Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(
                                    () {
                                      age--;
                                    },
                                  );
                                },
                              ),
                              const SizedBox(width: 15),
                              RawMaterialButton(
                                fillColor: kBottomContainerColor,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                constraints: const BoxConstraints(
                                    minHeight: 60.00, minWidth: 56.00),
                                child: const Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultPage()));
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
                        thickness: 5.00,
                        height: 2,
                        indent: 120,
                        endIndent: 120,
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.blueGrey,
                        thickness: 5.00,
                        height: 2,
                        indent: 150,
                        endIndent: 150,
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.blueGrey,
                        thickness: 5.00,
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
