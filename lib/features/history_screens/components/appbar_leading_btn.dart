import 'package:flutter/material.dart';
import 'package:trulycash/utils/size_config.dart';

class AppbarLeadingBtn extends StatelessWidget {
  const AppbarLeadingBtn({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        height: inch * 4,
        width: inch * 4,
        padding: EdgeInsets.only(left: inch),
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(Icons.arrow_back_ios),
      ),
      onPressed: (){},
    );
  }
}