import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key key, this.text, this.size = 2.8, this.textColor,
  }) : super(key: key);

  final String text;
  final double size;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Balance', style: TextStyle(
        color: textColor ?? kBgColor,
        fontSize: fontSize(size: inch * size),
        letterSpacing: .7,
        fontWeight: FontWeight.w600
    ),);
  }
}