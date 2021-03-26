import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trulycash/assets/colors/colors.dart';
import 'package:trulycash/features/history_screens/history_screen.dart';
import 'package:trulycash/features/home_screens/home_screen.dart';
import 'package:trulycash/features/settings_screens/settings_screen.dart';
import 'package:trulycash/features/transactions_screens/transaction_screen.dart';
import 'package:trulycash/utils/size_config.dart';

class TrulycashNavigationBarScreen extends StatefulWidget {
  TrulycashNavigationBarScreen({Key key}) : super(key: key);

  @override
  _TrulycashNavigationBarScreenState createState() =>
      _TrulycashNavigationBarScreenState();
}

class _TrulycashNavigationBarScreenState
    extends State<TrulycashNavigationBarScreen> {
  final List<Widget> _mPages = [
    TransactionScreen(),
    HistoryScreen(),
    SettingsScreen()
  ];
  int _mIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: _mPages.elementAt(_mIndex),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _mIndex = index;
            });
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
