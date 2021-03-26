import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class TextIconWidget extends StatelessWidget {
  const TextIconWidget({
    Key key,
    this.text = '@Username',
    this.icon = 'lib/features/home_screens/assets/icons/money.svg',
    this.iconColor = whiteColor
  }) : super(key: key);

  final String text;
  final String icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: inch * 2.6,
            width: inch * 2.6,
            color: iconColor,
          ),
          HorizontalSpacing(of: inch),
          Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize(size: size * 1.9),
                letterSpacing: .7,
                fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
