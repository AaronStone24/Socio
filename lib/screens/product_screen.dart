import 'package:flutter/material.dart';
import '../models/order.dart';
import '../models/product.dart';
import '../dummy_data.dart';

class ProductsScreen extends StatefulWidget {
  final shopId;
  final shopTitle;
  ProductsScreen(this.shopId,this.shopTitle);
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> 
{ 
 List<Product> _displayedProducts=[];
  @override
  void initState() {

    _displayedProducts = dummy_products.where((product) {
        return product.shopCategories.contains(widget.shopId);
      }).toList();
    super.initState();
    }
    void _addItemToCart(BuildContext context, int index)
    {
      final orderIndex=newOrders.indexWhere((orders){
         return orders.id==_displayedProducts[index].id;
       });
      if(orderIndex>=0){
          newOrders[orderIndex].quantity+=1;
      }
      else{
         newOrders.add(Order(
          id:_displayedProducts[index].id,
          shopId: widget.shopId,
          price: _displayedProducts[index].price,
          quantity: 1,
          title: _displayedProducts[index].title,
          shopName: widget.shopTitle,
          ));
      }
                      
      Scaffold.of(context).hideCurrentSnackBar();
      Scaffold.of(context).showSnackBar(
        SnackBar(
            content:Text('Added item to the cart'),
            duration: Duration(seconds: 2),
            action: SnackBarAction(
               label: 'UNDO',
               onPressed: (){
                   if(orderIndex>=0){
                      newOrders[orderIndex].quantity-=1;
                   }
                   else{
                      newOrders.removeAt(newOrders.length-1);
                    }
                  },
                 ),
               )
            );                    
    }
    
  @override
  Widget build(BuildContext context) {
    final appBar= AppBar(
        title: Text('${widget.shopTitle}',
        softWrap: true,
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.black54,
        fontSize: 22,
        fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      );
    return Scaffold(
      appBar: appBar,
      body: Stack(
          children:<Widget>[
        Image.network(
       'https://images.pexels.com/photos/2237190/pexels-photo-2237190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        width: double.infinity,
        height: MediaQuery.of(context).size.height-
        appBar.preferredSize.height-
        MediaQuery.of(context).padding.top,
        fit:BoxFit.cover),
         LayoutBuilder(
          builder:(ctx ,constraints){
            return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
              child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3/2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,),
          padding: EdgeInsets.all(15),
          itemCount: _displayedProducts.length,
          itemBuilder: (ctx, index)
          {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GridTile(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.gif',
                  image: _displayedProducts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Card(
                    color: Colors.white54,
                      child: Padding(
                      padding: EdgeInsets.all(10),
                        child: Text(
                        _displayedProducts[index].description,
                        softWrap: true,textAlign: TextAlign.center,),
                    ),
                  ),
                 trailing: FlatButton(
                   onPressed: ()=> _addItemToCart(ctx,index ),
                     child:Icon(Icons.add_shopping_cart),
                   ),
                 ),
                
                header: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    _displayedProducts[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
          
                    ),
                    leading: CircleAvatar(
                      
                      child: FittedBox(
                        child: Text('₹${_displayedProducts[index].price}'),
                      ),
                    ),
                    trailing: Card(
                    
                      color: Colors.white38,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Qty: ${_displayedProducts[index].quantity}')),
                    ),
                  ),
              )
                ,
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