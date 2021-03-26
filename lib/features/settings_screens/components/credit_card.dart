import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key key, this.cardNumber,
  }) : super(key: key);

  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: size * 6),
      padding: EdgeInsets.symmetric(horizontal: size * 1.8),
      margin: EdgeInsets.symmetric(vertical: size * 1),
      decoration: BoxDecoration(
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(size * .3), color: whiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cardNumber ?? 'xxxx xxxx xxxx 1234',
            softWrap: true,
            maxLines: 3,
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: kBgColor,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                fontSize: fontSize(size: size * 2.2)),
          ),
          Container(
            child: Row(
              children: [
                SvgPicture.asset(
                  'lib/features/settings_screens/assets/icons/visa.svg',
                  height: inch * 3,
                  width: inch * 3,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}