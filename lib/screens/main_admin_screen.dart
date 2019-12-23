import 'package:flutter/material.dart';
import './admin_screen2.dart';
import './admin_screen3.dart';
import './AllUsersScreen.dart';
class voteItem1{
  final String itemId1;
  final String itemTitle1;
  final String itemDescription1;

  voteItem1({
    @required this.itemId1,
    @required this.itemTitle1,

    this.itemDescription1,

  }
      );
}
class admin2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Admin"),
          actions: <Widget>[
            IconButton(
              onPressed:()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>AllUsersScreen())),
              icon: Icon(Icons.power_settings_new),
            )
          ],
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.developer_board),
              text:'NoticeBoard' ,
            ),
            Tab(
              icon: Icon(Icons.touch_app),
              text: 'Voting',
            ),
            Tab(
              icon: Icon(Icons.mood_bad),
              text: 'Complaints',
            )
          ],
          ),
        ) ,
        body: TabBarView(
          children: <Widget>[
            voteScreen3(),
            noticeScreen1(),
            compScreen2()

          ],
        ),

      ) ,
    );
  }
}
class NewvoteItemScreen1 extends StatelessWidget {
  final itemNameController1=TextEditingController();
  final itemDescriptionController1=TextEditingController();
  void addLostItem1(BuildContext ctx, {String itemTitle, String itemDescription}){
    if(itemTitle=='' || itemDescription==''){
      return;
    }
    voteScreen3.lostItems1.add(
        voteItem1(
            itemId1: DateTime.now().toString(),
            itemTitle1: itemTitle,
            itemDescription1: itemDescription,

        )
    );
    Navigator.of(ctx).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Notice'),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
                elevation: 5,
                child: Padding(
                  padding:EdgeInsets.all(10),
                  child:Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Notice Title'),
                        controller: itemNameController1
                        ,),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(labelText: 'Description'),
                        controller: itemDescriptionController1
                        ,),
                      SizedBox(height: 10,),
                      RaisedButton(
                        elevation: 4 ,
                        child: Text('Add Notice'),
                        onPressed: (){
                          addLostItem1(context,itemTitle:itemNameController1.text,
                              itemDescription: itemDescriptionController1.text,);
                        },)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

class voteScreen3 extends StatefulWidget {
  static List<voteItem1> foundItems1=[];
  static List<voteItem1> lostItems1=[
    voteItem1(
      itemId1: 'd1',
      itemTitle1: 'Important Meeting',
      itemDescription1: 'Meeting tomorrow at 10pm in the meeting hall for discussing about new year celebration.'
    ),
    voteItem1(
      itemId1: 'd2',
      itemTitle1: 'New Year\'s Celebtration!',
      itemDescription1: 'Mark your calenders for the celebration of New Year\'s at society\'s Club house on Sunday at 8pm.',

    ),
    voteItem1(
      itemId1: 'd3',
      itemTitle1: 'Important Meeting',
      itemDescription1: 'Meeting tomorrow at 9pm in the meeting hall for discussing new policies in society.',
    ),
  ];
  @override
  _voteScreenState3 createState() => _voteScreenState3();
}

class _voteScreenState3 extends State<voteScreen3> {
  void startNewLostItem(BuildContext ctx)
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return NewvoteItemScreen1();
    }));
  }

  void deletevoteItem(int delIndex){
    setState(() {
      voteScreen3.lostItems1.removeAt(delIndex);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (ctx, index){
            return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15) ),
                        elevation: 4,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                         ClipRRect(
                         borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                         child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text(voteScreen3.lostItems1[index].itemTitle1,
                          style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text('Details: '+voteScreen3.lostItems1[index].itemDescription1),
                          ),
                      ),
                        ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                    FlatButton(
                      child:Container(
                        width: double.infinity,
                        height: 20,
                        child: Icon(Icons.delete,color: Colors.red[400],)),
                      onPressed: ()=> deletevoteItem(index),),
                        
                ]
            )
            );
          },
          itemCount: voteScreen3.lostItems1.length,
        ),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.orangeAccent,foregroundColor: Colors.blueGrey[700],
        child: Icon(Icons.add),
        onPressed: ()=> startNewLostItem(context),
      ),
    );
  }
}
