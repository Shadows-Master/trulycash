import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/home_screens/components/user_avatar.dart';
import 'package:trulycash/repository/components/header_button.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

import 'components/btc_price.dart';
import 'components/transac_input.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({Key key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
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
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                    height: SizeConfig.screenHeight * .48,
                    width: SizeConfig.screenWidth,
                    color: kPrimaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: horizontal(size: size * 6)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TransacInput(
                                  label: 'Enter Amount',
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      'lib/features/transactions_screens/assets/icons/dollar.svg',
                                      height: size * 3, width: size * 3,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                TransacInput(),
                              ],
                            ),
                          ),
                        ),
                        VerticalSpacing(of: inch * 2),
                        HeaderButton(btnText: 'Next', ),
                      ],
                    )),
                VerticalSpacing(of: inch * 2),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: size * 2.9),
                  child: BtcPrice(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget myAppBar() {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: UserAvatar(
            defSize: 2,
            radius: 30,
          ),
        )
      ],
    );
  }
}


