import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trulycash/features/home_screens/components/user_avatar.dart';
import 'package:trulycash/utils/size_config.dart';

import 'components/appbar_leading_btn.dart';
import 'components/header_title.dart';
import 'components/transaction_card.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                  child: HeaderTitle(text: 'Transaction History',),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    padding: EdgeInsets.symmetric(horizontal: size * 1.8),
                    itemBuilder: (context, index) => TransactionCard(),
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






