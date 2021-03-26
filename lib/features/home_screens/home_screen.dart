import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/history_screens/components/appbar_leading_btn.dart';
import 'package:trulycash/features/history_screens/components/header_title.dart';
import 'package:trulycash/features/home_screens/components/user_avatar.dart';
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
                    Container(
                      width: size * 18,
                      height: size * 4.6,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(inch * 3),
                        color: Colors.redAccent
                      ),
                      child: Text('@Username', style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize(size: size * 1.9),
                          letterSpacing: .7,
                          fontStyle: FontStyle.italic
                      ),),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: inch * 4),
                        margin: EdgeInsets.only(top: inch * 3, bottom: inch * 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextIconWidget(),
                            TextIconWidget(),
                          ],
                        ),
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
      ),
    );
  }
}



