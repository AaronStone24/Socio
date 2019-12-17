import 'package:startup_namer/ScreenList.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../models/notice.dart';
import 'package:flutter/material.dart';
class FavoriteNewsFeedScreen extends StatefulWidget {
  @override
  _FavoriteNewsFeedScreenState createState() => _FavoriteNewsFeedScreenState();
}

class _FavoriteNewsFeedScreenState extends State<FavoriteNewsFeedScreen> {
  List<Notice> favoriteNoticeItems=[];
  @override
  void initState() {
    favoriteNoticeItems=noticeItems.where((items)=> items.isFavorite).toList();
    super.initState();
  }
  final appBar=AppBar(
        title: Text('Favorite NewsFeeds'),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: (favoriteNoticeItems.isNotEmpty)?
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
                     itemCount: favoriteNoticeItems.length,
                     itemBuilder: (ctx, index){
                       return ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: Card(
                           elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Dismissible(
                              key: ValueKey(favoriteNoticeItems[index].id),
                              direction: DismissDirection.endToStart,
                              onDismissed: (direction) {
                               setState(() {
                                 favoriteNoticeItems.removeAt(index);
                                 noticeItems[index].isFavorite=false;
                               });

                              Scaffold.of(ctx).hideCurrentSnackBar();
                              Scaffold.of(ctx)
                                .showSnackBar(SnackBar(content: Text("Removed from favorites")));
                             },
                             background: Container(color: Colors.red,
                             child: Icon(Icons.delete,
                             color: Colors.white,
                             size: 30),),
                              child: ListTile(
                               title: Text(
                                 favoriteNoticeItems[index].title,
                                 style: TextStyle(
                                   fontSize: 22,
                                   fontWeight: FontWeight.bold),
                                 ),
                                 subtitle: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(favoriteNoticeItems[index].content,),
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
                  Text("No Favourites Yet!!",
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