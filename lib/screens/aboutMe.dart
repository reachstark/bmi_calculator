import 'package:flutter/material.dart';

import '../theme/appTheme.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  static const String id = 'about_me';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 70.0,
              ),
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage(myProfileImage),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(profileName, style: profileNameTextStyle),
              const Text(jobTitle, style: jobTitleTextStyle),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.deepPurple.shade100,
                ),
              ),
              const Card(
                color: activeCardColor,
                margin: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 34.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(myPhoneContact, style: cardTextStyle),
                  ),
                ),
              ),
              const Card(
                color: activeCardColor,
                margin: EdgeInsets.symmetric(
                  vertical: 1.0,
                  horizontal: 34.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      myEmailContact,
                      style: cardTextStyle,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
