import 'package:flutter/material.dart';
import 'package:trulycash/utils/size_config.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key key,
    @required double defSize,
    this.radius,
    this.image = 'lib/features/home_screens/assets/images/avatar.jpg',
    this.borderColor,
  })  : _defSize = defSize,
        super(key: key);

  final double _defSize;
  final double radius;
  final String image;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,),
      child: CircleAvatar(
        radius: radius ?? 50,
        backgroundImage: AssetImage(image),
      ),
      margin: EdgeInsets.only(top: _defSize * 5),
    );
  }
}
