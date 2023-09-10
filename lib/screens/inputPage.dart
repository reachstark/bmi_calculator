import 'package:bmi_calculator/model/function.dart';
import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/homeDrawer.dart';
import '../theme/appTheme.dart';
import '../model/bottomButtonModel.dart';
import '../model/cardModel.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  static const String id = 'input_page';

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { Male, Female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(appTitle, style: TextStyle(fontFamily: 'Poppins')),
      ), // appBar
      drawer: const HomeDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Top Cards
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.Male;
                  });
                },
                clr: selectedGender == Gender.Male
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'Male',
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.Female;
                  });
                },
                clr: selectedGender == Gender.Female
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'Female',
                ),
              ),
            ),
          ])),
          // Centre Cards
          Expanded(
            child: ReusableCard(
              clr: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    labelHeight,
                    style: labelTextStyle,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        const Text(
                          ' cm',
                        ),
                      ]),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                        value: height.toDouble(),
                        min: minHeight,
                        max: maxHeight,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          // Bottom Cards
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          labelWeight,
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                  child: const Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                              const SizedBox(width: 10.0),
                              FloatingActionButton(
                                  child: const Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    clr: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          labelAge,
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                  child: const Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              const SizedBox(width: 10.0),
                              FloatingActionButton(
                                  child: const Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom Button as wide as the screen can be
          BottomButton(
            bottomButton: calculateButton,
            onTap: () {
              CalculatorFunction performFunction =
                  CalculatorFunction(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: performFunction.calculateBMI(),
                    resultText: performFunction.getResult(),
                    interpretation: performFunction.getInterpretation(),
                    bmiInterpretation: performFunction.getInterpretation(),
                    getResult: performFunction.getResult(),
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
