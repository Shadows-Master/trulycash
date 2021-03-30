import 'package:flutter/material.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class BtcPrice extends StatelessWidget {
  const BtcPrice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: size * 22),
      width: SizeConfig.screenWidth * .9,
      padding: EdgeInsets.symmetric(horizontal: size * 2.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 2),
        color: Colors.blueAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Current Bitcoin Price',
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize(size: size * 2.2),
              fontWeight: FontWeight.w500,
              letterSpacing: .7,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size * 2),
            child: Row(
              children: [
                Text(
                  '20,879.97',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize(size: size * 3.9),
                    fontWeight: FontWeight.w700,
                    letterSpacing: .7,
                  ),
                ),
                Text(
                  'USD/BTC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize(size: size * 1.9),
                    fontWeight: FontWeight.w700,
                    letterSpacing: .7,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}