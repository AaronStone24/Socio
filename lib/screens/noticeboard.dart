import '../dummy_newsfeedData.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
class NoticeBoard extends StatefulWidget {
  @override
  _NoticeBoardState createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
   final appBar= AppBar(
        title: Text('Notice Board',
        style: TextStyle(color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body:(noticeItems.isNotEmpty)?
          Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top,
            child: Image.asset('assets/plain-white-background.jpg',
            fit: BoxFit.cover,),
          ),
              LayoutBuilder(
                builder:(ctx ,constraints){
                  return Container(
                   width: constraints.maxWidth,
                   height: constraints.maxHeight,
                   child: ListView.builder(
                     itemCount: noticeItems.length,
                     itemBuilder: (ctx, index){
                       return ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: Card(
                           elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ListTile(
                             title: Text(
                               noticeItems[index].title,
                               style: TextStyle(
                                 fontSize: 22,
                                 fontWeight: FontWeight.bold),
                               ),
                               subtitle: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text(noticeItems[index].content,),
                               ),
                              trailing:IconButton(
                                icon: Icon(Icons.star,
                                color: (noticeItems[index].isFavorite)?Colors.amber: null,),
                                onPressed:() {
                                  setState(() {
                                   noticeItems[index].isFavorite=!noticeItems[index].isFavorite;
                                  });
                                }),
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
                  Text("Empty NewsFeed!",
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