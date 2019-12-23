import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../ScreenList.dart';
import '../dummy_garbage_data.dart';
import './duty_areas.dart';
class GarbageCollectorDetails2 extends StatelessWidget {
  final appBar=AppBar(
    title: Text('Garbage Collection'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: appBar,
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.orangeAccent,foregroundColor: Colors.blueGrey[700],
        child: Icon(Icons.arrow_back),
        onPressed: ()=> Navigator.of(context).pop(),),
      body:(garbageCollectors.isNotEmpty)?
        Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top,
            ),
            LayoutBuilder(
              builder:(ctx ,constraints){
                return Container(
                 width: constraints.maxWidth,
                 height: constraints.maxHeight,
                 child: ListView.builder(
                   itemCount: garbageCollectors.length,
                   itemBuilder: (ctx, index){
                       return ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: InkWell(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DutyAreasScreen(index)));
                           },
                            child: Card(
                             elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListTile(
                               title: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(
                                   garbageCollectors[index].name,
                                   style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold),
                                   ),
                               ),
                                 subtitle: Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Text(garbageCollectors[index].contactDetails,),
                                 ),
                                 leading: Container(
                                   width: 60,
                                   height: 60,
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(10),
                                     child: Image.network(garbageCollectors[index].imageAddress,
                                     fit: BoxFit.cover,),
                                   ),
                                 ),
                                 trailing: Text(
                                   'Shift:\n${garbageCollectors[index].shiftDetails}'
                                 ),
                                  ),
                            ),
                           ),
                         ),
                       );
                          }
                      ),
                    );
                  }
                ),       
        ]
        ): Center(
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
                  Text("No Details!",
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