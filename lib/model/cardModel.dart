import 'package:flutter/material.dart';
import '../theme/appTheme.dart';

// Card Design
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.clr, this.cardChild, this.onPress});

  final Color clr;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: cardChild,
      ),
    );
  }
}

// Icon Design
class IconContent extends StatelessWidget {
  const IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: cardIconSize),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
