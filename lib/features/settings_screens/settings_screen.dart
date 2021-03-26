import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/history_screens/components/appbar_leading_btn.dart';
import 'package:trulycash/features/history_screens/components/header_title.dart';
import 'package:trulycash/features/home_screens/components/user_avatar.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

import 'components/credit_card.dart';
import 'components/settings_options.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: myAppBar(),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpacing(of: inch * 2),
                Padding(
                  padding:  EdgeInsets.only(left: size * 1.8),
                  child: HeaderTitle(text: 'Settings',),
                ),
                VerticalSpacing(of: inch * 3),
                SettingsOptions(titleOption: 'usd',),
                SettingsOptions(settingTitle:'Default Language', titleOption: 'en',),
                SettingsOptions(settingTitle:'Savings Cards'),
                VerticalSpacing(of: inch * 3),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: size * 3.8),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => CreditCard(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize myAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(size * 8),
      child: AppBar(
        leading: Padding(
          padding:  EdgeInsets.only(top: 5),
          child: AppbarLeadingBtn(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: UserAvatar(
              defSize: 2,
              radius: 30,
            ),
          )
        ],
      ),
    );
  }
}




