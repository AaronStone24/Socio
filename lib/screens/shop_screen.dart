import 'package:flutter/material.dart';
import 'package:startup_namer/ScreenList.dart';

class ShopScreen extends StatefulWidget {
  final categoryId;
  final categoryTitle;
  final categoryImageUrl;
  ShopScreen(this.categoryId,this.categoryTitle,this.categoryImageUrl);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
   List<Shop> _displayedShops=[];
  
  @override
  void initState() {
    _displayedShops = dummy_shops.where((shop) {
        return shop.categories.contains(widget.categoryId);
      }).toList();
    super.initState();
    }
    
  @override
  Widget build(BuildContext context) {
    final appBar= AppBar(
        title: Text('${widget.categoryTitle}',
        style: TextStyle(color: Colors.black54,
        fontSize: 22,
        fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      );
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blueGrey[400],
        ),
        child: BottomNavBar(<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          title: Text('Categories'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('My Cart'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('My Orders'),
        )
      ],<Widget>[CategoryScreen(),OrderScreen(),PlacedOrderScreen()],3),
      ),
      body: Stack(
          children:<Widget>[
            FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.gif',
                  image: widget.categoryImageUrl,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top,
                  fit: BoxFit.cover,
                ),
         LayoutBuilder(
          builder:(ctx ,constraints){
            return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
              child: ListView.builder(
          itemCount: _displayedShops.length,
          itemBuilder: (ctx, index)
          {
            return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card (
              margin: EdgeInsets.all(5),
              elevation: 5,
              color: Colors.white70,
              child: ListTile(
                title: Text(_displayedShops[index].title,
                style: bodyTheme.copyWith(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                leading: CircleAvatar( child:Text('${index+1}'),
                backgroundColor: Colors.blueGrey[700],),
                trailing: RaisedButton(
                  elevation: 4,
                  color: Colors.amber,
                  onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) {
                  return ProductsScreen(
                    _displayedShops[index].id,
                    _displayedShops[index].title,
                  );
                },
                )),
                  child: Text(
                    'Order',
                  ),
                ) ,
                subtitle: Text(
                  'Rating :${_displayedShops[index].rating}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            );
          },
        ),
            );
      }
         )
          ]
    )
    );
      

  }
}