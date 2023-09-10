import 'package:flutter/material.dart';
import '../theme/appTheme.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  static const String id = 'faq_page';

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  List<String> questions = [
    question1,
    question2,
    question3,
    question4,
    question5,
    question6,
    question7,
    question8,
    question9,
    question10,
  ];

  List<String> answers = [
    answer1,
    answer2,
    answer3,
    answer4,
    answer5,
    answer6,
    answer7,
    answer8,
    answer9,
    answer10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/images/sliverappbar_image.png'),
              ),
            ),
            title: Text(
              'FAQs',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
          ),
          SliverList.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              final answer = answers[index];
              return InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: inactiveCardColor,
                        title: Text(
                          '${index + 1}. $question',
                          style: alertDialogTitle,
                        ),
                        content: Text(
                          answer,
                          style: const TextStyle(fontFamily: 'Poppins'),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Got it!'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                  child: ListTile(
                    title: Text(
                      '${index + 1}. $question',
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
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
