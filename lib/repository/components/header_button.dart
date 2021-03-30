import 'package:flutter/material.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';


class HeaderButton extends StatelessWidget {
  const HeaderButton({
    Key key, this.btnText, this.isItalic = false,
  }) : super(key: key);

  final String btnText;
  final bool isItalic;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: size * 18,
        height: size * 4.6,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(inch * 3),
            color: Colors.redAccent),
        child: Text(
          btnText ?? '',
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize(size: size * 1.9),
            fontWeight: FontWeight.w700,
            letterSpacing: .7,
            fontStyle: (isItalic) ? FontStyle.italic : FontStyle.normal
          ),
        ),
      ),
    );
  }
}