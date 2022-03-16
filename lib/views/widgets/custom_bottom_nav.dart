import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

// ignore: use_key_in_widget_constructors
class CustomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      color: bgColor2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home,
            color: mainColor,
            size: 25.0,
          ),
          Icon(
            Icons.notifications,
            color: white,
            size: 25.0,
          ),
          Icon(
            Icons.perm_media_rounded,
            color: white,
            size: 25.0,
          ),
          Icon(
            Icons.account_circle_rounded,
            color: white,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}
