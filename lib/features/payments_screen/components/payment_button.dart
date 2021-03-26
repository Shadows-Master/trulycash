import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    Key key,
    this.btnText,
    this.btnColor,
    this.onPress,
  }) : super(key: key);

  final String btnText;
  final Color btnColor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: size * 8),
      width: SizeConfig.screenWidth * .9,
      margin: EdgeInsets.only(bottom: inch * 2),
      child: ElevatedButton(
        child: Text(
          btnText ?? 'Pay',
          style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: fontSize(size: size * 2.2)),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(btnColor ?? kPrimaryColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(inch * 5))),
        ),
        onPressed: onPress,
      ),
    );
  }
}
