import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/forms/form_widget.dart';
import 'package:trulycash/utils/size_config.dart';

import 'components/payment_button.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Container(
            child: Column(
              children: [
                VerticalSpacing(of: size * 6),
                Text(
                  'Complete your Payment',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor,
                    fontSize: inch * 2.9
                  ),
                ),
                Expanded(
                  child: Form(
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          KTextFormField(
                            labelText: 'Name on Card',
                            hintText: 'John Doe',
                          ),
                          KTextFormField(
                            labelText: 'Card Number',
                            hintText: '1234 4851 8954 8745',
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: KTextFormField(
                                  labelText: 'Expiry',
                                  hintText: '12/01',
                                ),
                              ),
                              Flexible(
                                child: KTextFormField(
                                  labelText: 'Security Code',
                                  hintText: '1203',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: top(size:  size * 5)),
                            child: Column(
                              children: [
                                PaymentButton(),
                                PaymentButton(
                                  btnText: 'Cancel Payment',
                                  btnColor: Colors.redAccent,
                                  onPress: (){},
                                ),
                                Text(
                                  '128 bit secure payment gateway',
                                  style: TextStyle(
                                      color: lightGreyColor,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      fontSize: fontSize(size: size * 1.2)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

