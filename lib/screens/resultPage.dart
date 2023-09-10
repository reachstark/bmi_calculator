import 'package:bmi_calculator/model/cardModel.dart';
import 'package:bmi_calculator/screens/faqList.dart';
import 'package:flutter/material.dart';
import '../model/bottomButtonModel.dart';
import '../theme/appTheme.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.bmiInterpretation,
      required this.getResult,
      required String resultText,
      required String interpretation});

  static const String id = 'result_page';
  late final String getResult;
  late final String bmiResult;
  late final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(appTitle, style: TextStyle(fontFamily: 'Poppins')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              clr: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getResult,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiResultTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      bmiInterpretation,
                      textAlign: TextAlign.center,
                      style: bmiInterpretationTextStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, FAQPage.id);
                    },
                    child: const Text('Learn More'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          BottomButton(
              bottomButton: goBack,
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
