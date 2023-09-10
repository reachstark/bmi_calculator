import 'dart:ui';

import 'package:flutter/material.dart';

const bottomContainerHeight = 60.0;

// Strings
const appTitle = 'BMI Calculator';
const calculateButton = 'CALCULATE';
const labelHeight = 'Height';
const labelWeight = 'Weight';
const labelAge = 'Age';
const goBack = 'Return';
const resultOverweight =
    'You should aim to lose 0.5kg to 1kg per week through a combination of diet and exercise.';
const resultNormal =
    'You should still maintain a healthy weight by eating a healthy diet and getting regular exercise.';
const resultUnderweight =
    'You should aim to gain 0.5kg to 1kg per week through a combination of diet and exercise.';
const profileName = 'Le Boritheareach';
const jobTitle = 'Flutter Developer';
const myPhoneContact = '+855 96 541 8020';
const myEmailContact = 'Theareach.apple@gmail.com';

// Question lists
const question1 = 'What is BMI?';
const question2 = 'How to lose weight?';
const question3 = 'How to gain weight?';
const question4 = 'How to maintain a healthy weight?';
const question5 = 'What is the formula BMI calculator based on?';

// Answer lists
const answer1 =
    'Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women. \n\nIt is important to note that BMI is just a screening tool and does not take into account other factors such as muscle mass, bone density, and body composition. Therefore, it is not always accurate in determining a person\'s health. For example, athletes and people with a lot of muscle mass may have a high BMI, but they may not be overweight or obese.';
const answer2 =
    'Don\'t try to lose too much weight too quickly. Aim to lose 0.5-1kg per week. \n\nDon\'t try to overhaul your entire diet overnight. Start by making small changes, such as cutting out sugary drinks or processed foods. \n\nAim for at least 30 minutes of moderate-intensity exercise most days of the week. Losing weight takes time and effort. \n\nDon\'t get discouraged if you don\'t see results immediately. Just keep going!';
const answer3 =
    'Eat more calories than you burn. This is the most important thing you can do to gain weight. You can do this by eating more frequent meals and snacks, and by choosing calorie-dense foods. \n\nFocus on high-calorie foods. These are foods that are high in calories relative to their weight. Some examples include nuts, seeds, avocados, oils, whole grains, and dairy products. \n\nEat more protein. Protein is essential for building and repairing muscle tissue. Aim to eat 1 gram of protein per pound of body weight each day. \n\nGet enough sleep. Sleep is essential for muscle growth and repair. Aim for 7-8 hours of sleep each night. \n\nManage stress. Stress can lead to weight loss. Find healthy ways to manage stress, such as exercise, yoga, or meditation.';
const answer4 =
    'Here are some tips: \n\n• Eat a healthy diet that includes plenty of fruits, vegetables, and whole grains. \n\n• Limit your intake of processed foods, sugary drinks, and unhealthy fats. \n\n• Be physically active for at least 30 minutes most days of the week. \n\n• Make gradual changes to your lifestyle that you can stick with in the long term.';
const answer5 =
    'BMI is calculated by dividing a person\'s weight in kilograms by their height in meters squared. \n\nThe formula: \nBMI = weight (kg) / height (m)^2 \n\nThe World Health Organization (WHO) defines the following BMI categories: \n• Underweight: BMI < 18.5 \n• Normal weight: BMI 18.5–24.9 \n• Overweight: BMI 25–29.9 \n• Obesity: BMI ≥ 30';

// Card Customization
const activeCardColor = Color(0xC73B3279);
const inactiveCardColor = Color(0xFF111328);
const accentColor = Color(0xFF7A68BE);
const fontCardColor = Color(0xFF8D8E98);
const cardIconSize = 80.0;

// Constants
const minHeight = 120.0;
const maxHeight = 250.0;
const myProfileImage = 'assets/images/Reach_Suit.jpg';

// Text Styling
const alertDialogTitle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 18,
);

const cardTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 14,
  color: Colors.white,
);

const profileNameTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 30.0,
);

const jobTitleTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 2.5,
);

const drawerTitle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);

const resultTextStyle = TextStyle(
  color: Color(0xFF35DAA1),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);

const bmiInterpretationTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);

const bmiResultTextStyle = TextStyle(
  fontSize: 90.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);

const numberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  fontFamily: 'Poppins',
);

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
  fontFamily: 'Poppins',
);

const buttonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);

const titleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);
