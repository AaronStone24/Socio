import 'package:flutter/material.dart';

import './2.dart';
import './3.dart';

void s1(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return CategoriesScreen();
  }));
}

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parking Slots'),
      ),

      body: Container(
        child: GridView(
          padding: EdgeInsets.all(20.0),
          children: DUMMY_CATEGORIES
              .map(
                  (catData) =>
                  CategoryItem(
                    catData.title,
                    catData.color,
                  )


          )
              .toList(),

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
