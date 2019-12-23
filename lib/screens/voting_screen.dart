import 'package:flutter/material.dart';
import '../dummy_data_voting.dart';
import 'package:flare_flutter/flare_actor.dart';
class VotingScreen extends StatefulWidget {
  @override
  _VotingScreenState createState() => _VotingScreenState();
}


class _VotingScreenState extends State<VotingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Voting Portal'
        ),
      ),
      body: (voting.isEmpty)?Center(
              child: Column(children: <Widget>[
               Container(
                height: 200,
                width: 200,
                child: FlareActor('assets/empty.flr',
                 animation: 'idle',
                 fit: BoxFit.contain,
              )
             ),
               Text("No voting matters!",
                 style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                 ),
               ),
             ],
           )
             ): SingleChildScrollView(
               child: Column(
                 children: <Widget>[
                   ...voting.map(
                     (item){
                       return Card(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15) ),
                        elevation: 4,
                        margin: EdgeInsets.all(10),
                       child: Column(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: ListTile(
                               title: Text(
                                 item.title,
                                 style: TextStyle(
                                   fontSize: 22,
                                   fontWeight: FontWeight.bold),
                                 ),
                                 subtitle: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(item.content,),
                                 ),
                             ),
                           ),
                          (!item.hasVoted)? Row(
                             children: <Widget>[
                               Expanded(
                                   child: RaisedButton(
                                   color: Colors.teal[200],
                                   onPressed: (){
                                     setState(() {
                                       item.hasVoted=true;
                                       item.vote=true;
                                     });
                                   },
                                   child: Text(
                                     'Vote For',
                                     style: TextStyle(
                                       color: Colors.teal[900],
                                       fontWeight: FontWeight.w700,
                                    ),
                                   ),
                                  ),
                               ),
                               Expanded(
                                  child: RaisedButton(
                                   color: Colors.red[200],
                                    onPressed: (){
                                      setState(() {
                                       item.hasVoted=true;
                                       item.vote=false;
                                     });
                                    },
                                   child: Text(
                                     'Vote Against',
                                     style: TextStyle(
                                       color: Colors.red[900],
                                       fontWeight: FontWeight.w700,
                                    ),
                                   ),
                                 ),
                               ),
                             ],
                           ):(item.vote)?Container(
                             height: 40,
                             width: double.infinity,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(
                               color: Colors.teal[900],
                               width: 3.0,
                             ),),
                             child: Center(
                               child: Text(
                                 'Voted',
                                 style: TextStyle(color: Colors.teal[900],
                                 fontWeight: FontWeight.w700,
                                 ),
                                 textAlign: TextAlign.center,
                               ),
                             ),
                           ):Container(
                             height: 40,
                             width: double.infinity,
                             
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(
                               color: Colors.red[900],
                               width: 3.0,
                             ),),
                             child: Center(
                               child: Text(
                                 'Voted',
                                 style: TextStyle(color: Colors.red[900],
                                 fontWeight: FontWeight.w700,
                                 ),
                                 textAlign: TextAlign.center,
                               ),
                             ),
                           )
                         ]
                       )
                       );

                           
                     }
                   ).toList(),
                 ],
               ),
             ),
    );
  }
}