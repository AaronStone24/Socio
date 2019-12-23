import 'package:flutter/material.dart';

import './2.dart';
import './3.dart';
class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25.0),
      children: DUMMY_CATEGORIES
          .map(
            (catData) =>
            CategoryItem(
              catData.title,
              catData.color,
            ),
      )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),

    );
  }
}
