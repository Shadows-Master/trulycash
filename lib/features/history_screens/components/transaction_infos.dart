import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';


class TransactionInfos extends StatelessWidget {
  const TransactionInfos({
    Key key, this.leftTitle, this.rightTitle, this.leftTitleColor, this.rightTitleColor,
  }) : super(key: key);

  final String leftTitle;
  final String rightTitle;
  final Color leftTitleColor;
  final Color rightTitleColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size * 2.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle ?? '@Username', style: TextStyle(
              color: leftTitleColor ?? kBgColor,
              fontSize: fontSize(size: size * 1.9),
              letterSpacing: .7,
          ),),
          Text(
            rightTitle ?? '@Username', style: TextStyle(
              color: rightTitleColor ?? kBgColor,
              fontSize: fontSize(size: size * 1.9),
              letterSpacing: .7,
          ),),
        ],
      ),
    );
  }
}