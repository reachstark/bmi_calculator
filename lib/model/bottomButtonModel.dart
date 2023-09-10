import '../theme/appTheme.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.bottomButton, this.onTap});

  final String? bottomButton;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: accentColor,
        margin: const EdgeInsets.only(top: 10.0),
        height: bottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            bottomButton.toString(),
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
