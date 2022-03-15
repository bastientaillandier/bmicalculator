import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.bmi, required this.result, required this.sentence});

  final String bmi;
  final String result;
  final String sentence;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(top: 12.0),
            child: Text(
              'Your Result',
              style: kYourResultStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        result,
                        style: kResultTextStyle,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        bmi,
                        style: kBMITextStyle,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.all(50.0),
                    child: Center(
                      child: Text(
                        sentence,
                        textAlign: TextAlign.center,
                        style: kSentenceTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kTextStyle,
                ),
              ),
              width: double.infinity,
              height: kBackBarHeight,
              color: kOrangeColor,
              margin: const EdgeInsets.only(top: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
