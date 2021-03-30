import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key key, this.title, this.amount,
  }) : super(key: key);

  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: inch * 18,
      height: inch * 14,
      padding: EdgeInsets.only(left: inch * 1.8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(inch),
          gradient: kPrimaryGradientColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title ?? 'BTC', style: TextStyle(
              color: Colors.white,
              fontSize: fontSize(size: inch * 2),
              letterSpacing: .7,
              fontWeight: FontWeight.w400
          ),),
          VerticalSpacing(of: size * 1.5),
          Text(amount ?? '0.12647', style: TextStyle(
              color: Colors.white,
              fontSize: fontSize(size: inch * 3),
              letterSpacing: .7,
              fontWeight: FontWeight.w600
          ),),
        ],
      ),
    );
  }
}