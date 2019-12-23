import 'package:flutter/material.dart';
import '../ScreenList.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}
class _CategoryScreenState extends State<CategoryScreen> {
  List<Container> _listViewData=[];
  _showDrawer() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _listViewData,
              ),
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    _listViewData = [
      
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));},
        child: Text('Home',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>CategoryScreen()));},
        child: Text('Market',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>GarbageCollectorDetails()));},
        child: Text('Garbage Portal',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SecurityMainScreen()));},
        child: Text('Security',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ProfilePage("","","","","","","","")));},
        child: Text('Profile',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ];
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: MyBottomAppBar(Row(children: [
        IconButton(onPressed: () {_showDrawer();}, icon: Icon(Icons.keyboard_arrow_up), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/7)),
        IconButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>CategoryScreen()));},icon: Icon(Icons.shopping_basket), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/4)),
        IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>OrderScreen()));},icon: Icon(Icons.shopping_cart), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/8)),
        IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PlacedOrderScreen()));},icon: Icon(Icons.list), color: Colors.orange[500]),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      ),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[500],
        child: Icon(
          Icons.arrow_back,
          color: Colors.orange[50],
        ),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.blueGrey[200],
      drawer:MarketDrawer(),
      appBar: AppBar(
      title : Text('Categories' ),
      actions: <Widget>[],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3/2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,),
        padding: EdgeInsets.all(15),
        itemCount: dummy_categories.length,
        itemBuilder: (ctx, index){
          return InkWell(
            borderRadius:BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
            ),
            onTap:()=>
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>
              ShopScreen(
                dummy_categories[index].id,
                dummy_categories[index].title,
                dummy_categories[index].imageUrl,
              )
              )
              ),
            
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ) ,
              child: GridTile(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.gif',
                  image: dummy_categories[index].imageUrl,
                  fit: BoxFit.cover,
                ),
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    dummy_categories[index].title,
                    textAlign: TextAlign.center,
                    style: bodyTheme,
                  ) 
                  )
                  )
                ,
              )
              );
           }
              ),
          );
  }
}