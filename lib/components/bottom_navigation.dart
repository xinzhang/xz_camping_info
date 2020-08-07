import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white.withOpacity(0.5),
      child: Row(
        children: <Widget>[
          buildIconNavBarItem(
              icon: "assets/icons/info.svg", press: () => {}, isActive: true),
        ],
      ),
    );
  }

  IconButton buildIconNavBarItem(
      {String icon, Function press, bool isActive = false}) {
    return IconButton(
      icon: SvgPicture.asset(
        icon,
        color: isActive ? Colors.blueAccent : Color(0xFFD1D4D4),
        height: 22,
      ),
      onPressed: press,
    );
  }
}
