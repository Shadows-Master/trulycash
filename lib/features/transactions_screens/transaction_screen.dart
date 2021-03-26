import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/home_screens/components/user_avatar.dart';
import 'package:trulycash/features/payments_screen/components/payment_button.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/forms/form_widget.dart';
import 'package:trulycash/utils/size_config.dart';

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
            child: Column(
              children: [
                Container(
                    height: SizeConfig.screenHeight * .48,
                    width: SizeConfig.screenWidth,
                    color: kPrimaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          child: Column(
                            children: [
                              TransactionForm(
                                label: 'Enter Amount',),
                              TransactionForm(
                                icon: 'lib/features/transactions_screens/assets/icons/thai-baht.svg',
                                label: 'Estimated BTC',),
                            ],
                          ),
                        ),
                        VerticalSpacing(of: inch * 2),
                        Container(
                          width: size * 18,
                          height: size * 4.6,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(inch * 3),
                              color: Colors.redAccent),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize(size: size * 1.9),
                              fontWeight: FontWeight.w700,
                              letterSpacing: .7,
                            ),
                          ),
                        ),
                      ],
                    )),
                VerticalSpacing(of: inch * 2),
                Expanded(child: SingleChildScrollView(child: btcPrice()))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container btcPrice() {
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

class TransactionForm extends StatelessWidget {
  const TransactionForm({
    Key key, this.label, this.value, this.icon,
  }) : super(key: key);

  final String label;
  final String value;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size * 5, vertical: size),
      height: 116,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 2.5))
      ),
      child: Column(
        children: [
          Text(
            label ?? 'Current Bitcoin Price',
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize(size: size * 1.4),
              fontWeight: FontWeight.w700,
              letterSpacing: .7,
            ),
          ),
          KTextFormField(
            hintText: value ?? '',
            labelColor: Colors.white,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                icon ?? 'lib/features/transactions_screens/assets/icons/dollar.svg',
                height: inch * .5,
                width: inch * .5,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
