import 'package:flutter/material.dart';
import '../ScreenList.dart';
import 'package:flare_flutter/flare_actor.dart';

class PlacedOrderScreen extends StatelessWidget {
  final appBar=AppBar(
        title: Text('My Orders'),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MarketDrawer(),
      appBar: appBar,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: MyBottomAppBar(Row(children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*11.2/15)),
        IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage("assets/images/water.png","","","","","","","")));},icon: Icon(Icons.portrait), color: Colors.orange[500]),
        //Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/4)),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      
      body: (previousOrder.isNotEmpty)?
      Stack(
        children:<Widget>[
         FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: 'https://images.pexels.com/photos/2237190/pexels-photo-2237190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
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
              itemCount: previousOrder.length,
              itemBuilder: (ctx, index)
              {
                return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card (
                  margin: EdgeInsets.all(5),
                  elevation: 5,
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                           CircleAvatar(
                           radius: 15,
                           child:Padding(
                           padding: EdgeInsets.all(3),
                           child: Text('${index+1}'),)),
                           Container(
                           width: double.infinity,
                           height: 200,
                           child:ListView.builder(
                            itemCount: previousOrder[index].length,
                            itemBuilder: (ctxx, ind){
                              return ListTile(
                                title: Text('${previousOrder[index][ind].title}',),
                                leading: Icon(Icons.arrow_forward_ios),
                                trailing: Card(
                                  elevation: 3,
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Text('₹${(previousOrder[index][ind].price * previousOrder[index][ind].quantity)}'),
                                  ),
                                ),
                              );
                            },
                          ),
                          ),
                        ],
                      ),
                    )     
                  )
                );
              }
                  )
              );
          }
         )
        ]      
      ) : Center(
                   child: Column(children: <Widget>[
                     Container(
                       height: 200,
                       width: 200,
                       child: FlareActor(
                         'assets/empty.flr',
                         animation: 'idle',
                         fit: BoxFit.contain,
                       )
                     ),
                   Text("No Orders!",
                   style: TextStyle(
                     color: Colors.black54,
                     fontSize: 22,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   ],
                 )
                 ),

    );
  
  }
}