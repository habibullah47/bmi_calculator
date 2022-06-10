import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/re_usable_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.resultTitle,
      required this.bmiResult,
      required this.interpretation})
      : super(key: key);

  final String resultTitle;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('⚖ BMI Result'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              //margin: const EdgeInsets.only(left: 15, top: 65),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result:',
                style: kBigTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsableWidget(
              propertyColor: kActiveColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultTitle.toUpperCase(),
                    style: kBodyStatusStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kStyleResultNum,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                        'RE-CALCULATE',
                        style: kBottomTextStyle,
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 0.5,
                        height: 2,
                        indent: 120,
                        endIndent: 120,
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.black,
                        thickness: 0.5,
                        height: 2,
                        indent: 150,
                        endIndent: 150,
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.black,
                        thickness: 0.5,
                        height: 2,
                        indent: 180,
                        endIndent: 180,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
