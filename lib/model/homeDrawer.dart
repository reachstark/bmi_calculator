import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/aboutMe.dart';
import '../screens/faqList.dart';
import '../theme/appTheme.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: activeCardColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage('assets/images/app_logo.png'),
                  width: 100,
                ),
                Text(
                  appTitle,
                  style: drawerTitle,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.calculator,
            ),
            title: const Text(
              'Calculate my BMI',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.questionCircle,
            ),
            title: const Text(
              'FAQs',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
            onTap: () {
              Navigator.pushNamed(context, FAQPage.id);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text(
              'About',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
            onTap: () {
              Navigator.pushNamed(context, AboutMe.id);
            },
          ),
        ],
      ),
    );
  }
}
