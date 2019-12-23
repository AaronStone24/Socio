import 'package:flutter/material.dart';
class noticeItem4{
  final String itemId4;
  final String itemTitle4;
  final String itemDescription4;

  noticeItem4({
    @required this.itemId4,
    @required this.itemTitle4,

    this.itemDescription4,
  }
      );
}
class NewnoticeItemScreen4 extends StatelessWidget {
  final itemNameController4=TextEditingController();
  final itemDescriptionController4=TextEditingController();
  void addnoticeItem4(BuildContext ctx, {String itemTitle, String itemDescription}){
    if(itemTitle=='' || itemDescription==''){
      return;
    }
    noticeScreen1.lostItems4.add(
        noticeItem4(
            itemId4: DateTime.now().toString(),
            itemTitle4: itemTitle,
            itemDescription4: itemDescription,

        )
    );
    Navigator.of(ctx).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Voting Topic'),),
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
                        decoration: InputDecoration(labelText: 'Voting Title'),
                        controller: itemNameController4
                        ,),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(labelText: 'Description'),
                        controller: itemDescriptionController4
                        ,),
                      SizedBox(height: 10,),

                      RaisedButton(
                        elevation: 4 ,
                        child: Text('Add '),
                        onPressed: (){
                          addnoticeItem4(context,itemTitle:itemNameController4.text,
                              itemDescription: itemDescriptionController4.text,

                               );
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

class noticeScreen1 extends StatefulWidget {
  static List<noticeItem4> lostItems4=[
    noticeItem4(
      itemId4: 'd1',
      itemTitle4: 'Pets',
      itemDescription4: 'Should pets be allowed inside flats ?',

    ),
    noticeItem4(
      itemId4: 'd2',
      itemTitle4: 'Gen. Secretary Election',
      itemDescription4: 'Candidate 1:Akash Mata    Candidate 2: Rhythm Soni',

    ),
    noticeItem4(
      itemId4: 'd3',
      itemTitle4:"Solar panels",
      itemDescription4: 'Should solar panels be installed in our society?',

    ),
  ];
  @override
  _noticeScreenState1 createState() => _noticeScreenState1();
}

class _noticeScreenState1 extends State<noticeScreen1> {
  void startNewLostItem(BuildContext ctx)
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return NewnoticeItemScreen4();
    }));
  }

  void deleteLostItem(int delIndex){
    setState(() {
      noticeScreen1.lostItems4.removeAt(delIndex);
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
                          title: Text(noticeScreen1.lostItems4[index].itemTitle4,
                          style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(noticeScreen1.lostItems4[index].itemDescription4),
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
                      onPressed: ()=> deleteLostItem(index),),
                        
                ]
            )
            );
          },
          itemCount: noticeScreen1.lostItems4.length,
        ),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.orangeAccent,foregroundColor: Colors.blueGrey[700],
        child: Icon(Icons.add, ),
        onPressed: ()=> startNewLostItem(context),
      ),
    );
  }
}
