import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBar {
  setColor({BuildContext context}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
    );
  }
}

final StatusBar statusBar = StatusBar();
