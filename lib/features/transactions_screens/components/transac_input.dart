import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/forms/form_widget.dart';
import 'package:trulycash/utils/size_config.dart';

class TransacInput extends StatelessWidget {
  const TransacInput({
    Key key, this.label, this.prefixIcon,
  }) : super(key: key);

  final String label;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(top: size * 2.9, bottom: size * 2),
        child: Column(
          children: [
            Text(label ?? 'Estimated BTC', style: TextStyle(color: whiteColor, fontSize: size * 1.7, fontWeight: FontWeight.w700),),
            TransacFormField(
              prefixIcon: prefixIcon != null ? prefixIcon : null,
            ),
          ],
        ),
      ),
    );
  }
}