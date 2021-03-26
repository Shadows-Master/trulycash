import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({
    Key key,
    this.settingTitle,
    this.titleOption,
  }) : super(key: key);

  final String settingTitle;
  final String titleOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: size * 6),
      padding: EdgeInsets.symmetric(horizontal: size * 1.8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(size * .3), color: whiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            settingTitle ?? 'Default Currency',
            softWrap: true,
            maxLines: 3,
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: kBgColor,
                fontWeight: FontWeight.w800,
                fontSize: fontSize(size: size * 2.2)),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  titleOption != null ? titleOption.toUpperCase() : '',
                  softWrap: true,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: kBgColor,
                      fontWeight: FontWeight.w800,
                      fontSize: fontSize(size: size * 1.8)),
                ),
                HorizontalSpacing(of: size),
                SvgPicture.asset(
                  'lib/features/settings_screens/assets/icons/edit.svg',
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
