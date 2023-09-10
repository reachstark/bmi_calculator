import 'package:bmi_calculator/screens/aboutMe.dart';
import 'package:bmi_calculator/screens/faqList.dart';
import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:flutter/material.dart';
import 'screens/inputPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true).copyWith(
          primaryColor: const Color(0xFF1D1E33),
          scaffoldBackgroundColor: const Color(0xFF1C1C25),
        ),
        initialRoute: InputPage.id,
        routes: {
          InputPage.id: (context) => const InputPage(),
          ResultPage.id: (context) => ResultPage(
                bmiResult: '',
                bmiInterpretation: '',
                resultText: '',
                interpretation: '',
                getResult: '',
              ),
          AboutMe.id: (context) => const AboutMe(),
          FAQPage.id: (context) => const FAQPage(),
        });
  }
}
