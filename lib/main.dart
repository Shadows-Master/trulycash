import 'package:flutter/material.dart';
import 'package:trulycash/features/bottom_bar_screens/trulycash_navigation_bar_screen.dart';
import 'package:trulycash/features/history_screens/history_screen.dart';
import 'package:trulycash/features/home_screens/home_screen.dart';
import 'package:trulycash/utils/status_bar.dart';
import 'package:trulycash/utils/theme.dart';

void main() {
  runApp(TrulyCash());
}

class TrulyCash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    statusBar.setColor(context: context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: TrulycashNavigationBarScreen(),
    );
  }
}

