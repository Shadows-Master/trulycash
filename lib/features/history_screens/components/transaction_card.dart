import 'package:flutter/material.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/history_screens/components/transaction_infos.dart';
import 'package:trulycash/utils/constants.dart';
import 'package:trulycash/utils/size_config.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: height(size: size * 15),
        width: width(size: size * 25),
        margin: EdgeInsets.symmetric(vertical: inch * 1.5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(inch * 2),
            boxShadow: [
              BoxShadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 5.0,
                  color: kBgColor.withAlpha(50)
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TransactionInfos(
              leftTitle: 'BSV address',
              leftTitleColor: Colors.redAccent,
              rightTitle: '+\$200',
              rightTitleColor: Colors.lightBlue,
            ),
            VerticalSpacing(of: size * 1.2),
            TransactionInfos(
              leftTitle: '03 Confirmations',
              rightTitle: '21 Mar',
            ),
          ],
        ),
      ),
    );
  }
}