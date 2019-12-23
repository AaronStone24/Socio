import '../ScreenList.dart';
import './found_screen.dart';
import './lost_item_detail.dart';
import '../models/lost_item.dart';
import 'package:flutter/material.dart';
import './new_lost_item_screen.dart';
import '../dummy_data_lost.dart';
import 'BottomAppBar.dart';

class LostScreen extends StatefulWidget { 
  @override
  _LostScreenState createState() => _LostScreenState();
}

class _LostScreenState extends State<LostScreen> {
  void startNewLostItem(BuildContext ctx)
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return NewLostItemScreen();
    }));
  }
  void displayLostItem(BuildContext ctx, LostItem item){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return LostItemDetail(item);
    }));
   }
   void foundLostItem(int foundIndex){
     setState(() {
       foundItems.add(lostItems[foundIndex]);
       lostItems.removeAt(foundIndex);
       
     });
   }
   void deleteLostItem(int delIndex){
     setState(() {
       lostItems.removeAt(delIndex);
     });
   }
   List<Widget> _listViewData=[];
  _showDrawer() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.blueGrey[500],
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.all(15)),
              Column(
                
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
        child: Text('Home',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500]),),
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
        child: Text('Market',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500]),),
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
        child: Text('Garbage Portal',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500]),),
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
        child: Text('Security',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500]),),
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
        child: Text('Profile',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500]),),
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
      backgroundColor: Colors.blueGrey[200],
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height-154,
            child: ListView.builder(
              itemBuilder: (ctx, index){
                return InkWell(
                      onTap: ()=>displayLostItem(context,lostItems[index]), 
                      child: Card(
                          margin: EdgeInsets.all(8),
                          elevation: 4,
                          color: Colors.white70,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                            leading: CircleAvatar( 
                              backgroundColor: Colors.brown,
                              radius: 25,
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: (lostItems[index].imageUrl!='')?
                                Image.network(lostItems[index].imageUrl,
                                fit: BoxFit.cover,): 
                                Image.asset('assets/images/no-image.png', fit: BoxFit.cover),
                              ),
                            ),
                            title: Text(lostItems[index].itemTitle,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                              ),),
                            subtitle: (lostItems[index].ownerName!='')? Text('Owner: ${lostItems[index].ownerName}',
                            style: TextStyle(fontWeight: FontWeight.bold), )
                            :Text('Owner: Anonymous',
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            trailing: FittedBox(
                              child: Row(children:<Widget>[
                              IconButton(
                                tooltip: 'Add to Found',
                                onPressed: ()=> foundLostItem(index),
                                icon: Icon(Icons.done_all),
                              ),
                              IconButton(
                                tooltip: 'Remove from lost items',
                                icon:Icon(Icons.delete),
                                 color: Color.fromRGBO(220, 0, 0, 1),
                                onPressed: ()=> deleteLostItem(index),),
                              ]
                              )
                        ),
                            ),
                       ),
                      ),
                    );
              },
              itemCount: lostItems.length,
            ),
          ),
        ],
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[500],
        child: Icon(
          Icons.add,
          color: Colors.orange[50],
        ),
        onPressed: ()=> startNewLostItem(context),
      ),

      bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: MyBottomAppBar(Row(children: [
        IconButton(onPressed: () {_showDrawer();}, icon: Icon(Icons.keyboard_arrow_up), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/12)),
        Text("Lost",style: TextStyle(color: Colors.orange[500],fontWeight: FontWeight.w500,fontSize: 18),),
        IconButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>LostScreen()));},icon: Icon(Icons.mood_bad, color: Colors.orange[500])),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/4)),
        Text("Found",style: TextStyle(color: Colors.orange[500],fontWeight: FontWeight.w500,fontSize: 18),),
        IconButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>FoundScreen()));},icon: Icon(Icons.mood), color: Colors.orange[500]),
        //Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/8)),
        //IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage()));},icon: Icon(Icons.list), color: Colors.orange[500]),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      )
      )
    );
  }
}
