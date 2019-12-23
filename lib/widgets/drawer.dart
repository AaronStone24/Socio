import 'package:flutter/material.dart';
import '../ScreenList.dart';

class MarketDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'My Market!',
              style: TextStyle(
                fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Colors.orange[500]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Categories', Icons.shopping_basket, () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
              (_)=> CategoryScreen()));
            
          }),
          buildListTile('My cart', Icons.shopping_cart, () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
              (_)=> OrderScreen()));
          }),
        buildListTile('My order', Icons.list, () {
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
              (_)=> PlacedOrderScreen()));
          }),
        ],
      ),
    );
  }
}
