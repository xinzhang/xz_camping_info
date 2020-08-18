import 'package:flutter/material.dart';
import 'package:xz_camping_info/components/bottom_navigation.dart';
import 'package:xz_camping_info/components/camping/text_section.dart';

import 'components/camping/title_section.dart';

class CampingInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(title: Text("Camping info")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/lakes.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            TitleSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildButtonColumn(color, Icons.call, "CALL"),
                buildButtonColumn(color, Icons.near_me, "ROUTE"),
                buildButtonColumn(color, Icons.share, "SHARE"),
              ],
            ),
            TextSection()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  Column buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ))
      ],
    );
  }
}
