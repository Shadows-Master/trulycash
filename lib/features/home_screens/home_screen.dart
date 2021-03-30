import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/bottom_bar_screens/trulycash_navigation_bar_screen.dart';
import 'package:trulycash/features/history_screens/components/appbar_leading_btn.dart';
import 'package:trulycash/features/history_screens/components/header_title.dart';
import 'package:trulycash/features/home_screens/components/user_avatar.dart';
import 'package:trulycash/repository/components/header_button.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

import 'components/balance_card.dart';
import 'components/text_icon_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          leading: AppbarLeadingBtn(),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight * .35,
                width: SizeConfig.screenWidth,
                color: kPrimaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UserAvatar( defSize: 0,),
                    VerticalSpacing(of: inch * 2),
                    Text('John Doe', style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize(size: inch * 2.8),
                        letterSpacing: .7,
                        fontWeight: FontWeight.w600
                    ),),
                    VerticalSpacing(of: inch * 1),
                    HeaderButton(btnText: '@Username', isItalic: true),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: inch * 4),
                      margin: EdgeInsets.only(top: inch * 3, bottom: inch * 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextIconWidget(),
                          TextIconWidget(),
                        ],
                      ),
                    )
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: inch * 2),
                margin: EdgeInsets.only(top: inch * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderTitle(),
                    VerticalSpacing(of: inch),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BalanceCard(),
                          BalanceCard(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
          },
          elevation: 0,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          items: [
            BottomNavigationBarItem(
                title: Text('Home', style: TextStyle(color: kPrimaryColor)),
                icon: SvgPicture.asset(
                  'lib/features/bottom_bar_screens/assets/icons/home.svg',
                  height: inch * 3,
                  width: inch * 3,
                  color: kPrimaryLightColor,
                )),
            BottomNavigationBarItem(
                title: Text('History', style: TextStyle(color: kPrimaryColor)),
                icon: SvgPicture.asset(
                  'lib/features/bottom_bar_screens/assets/icons/history.svg',
                  height: inch * 3,
                  width: inch * 3,
                  color: kPrimaryLightColor,
                )),
            BottomNavigationBarItem(
                title: Text('Settings', style: TextStyle(color: kPrimaryColor)),
                icon: SvgPicture.asset(
                  'lib/features/bottom_bar_screens/assets/icons/settings.svg',
                  height: inch * 3,
                  width: inch * 3,
                  color: kPrimaryLightColor,
                )),
          ],
        ),
      ),
    );
  }
}




