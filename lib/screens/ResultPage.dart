import 'package:bmi_calculator/components/re_usable_widget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 15, top: 65),
              child: const Text(
                'Your Result',
                style: kBigTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsable_Widget(
              propertyColor: kActiveColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'OVERWEIGHT',
                    style: kBodyStatusStyle,
                  ),
                  const Text(
                    '30.6',
                    style: kStyleResultNum,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: const Text(
                      'You are over fated, You need to stay more fasting. Don\'t ete, Don\'t drink. Only stay on fasting mood.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
          ),
        ],
      ),
    );
  }
}
