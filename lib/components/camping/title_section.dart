import 'package:flutter/material.dart';
import 'package:xz_camping_info/components/camping/favourite.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("Oeschinen Lake Campground",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ),
                Text("Kanderste, Switzeland",
                    style: TextStyle(color: Colors.grey[500]))
              ],
            ),
          ),
          FavouriteWidget(),
        ],
      ),
    );
  }
}
