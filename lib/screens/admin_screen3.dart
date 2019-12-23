import 'package:flutter/material.dart';
class compItem5{
  final String itemId5;
  final String itemTitle5;
  final String itemDescription5;

  compItem5({
    @required this.itemId5,
    @required this.itemTitle5,
    this.itemDescription5,

  }
      );
}
class compScreen2 extends StatefulWidget {
  static List<compItem5> foundItems5=[];
  static List<compItem5> lostItems5=[
    compItem5(
      itemId5: 'd1',
      itemTitle5: 'Leakage in pipes in kitchen',
      itemDescription5: 'Flat No: 12,Wing:A',

    ),
    compItem5(
      itemId5: 'd2',
      itemTitle5: 'Installation of tube lights ',
      itemDescription5: 'Flat No: 15,Wing :G',

    ),
    compItem5(
      itemId5: 'd3',
      itemTitle5: "Carpenter required for installing cupboards ",
      itemDescription5: 'Flat No: 34,Wing:B',
    ),
  ];
  @override
  _compScreenState2 createState() => _compScreenState2();
}

class _compScreenState2 extends State<compScreen2> {

  void deleteLostItem(int delIndex){
    setState(() {
      compScreen2.lostItems5.removeAt(delIndex);
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
                          title: Text(compScreen2.lostItems5[index].itemTitle5,
                          style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text('Flat Details: '+compScreen2.lostItems5[index].itemDescription5),
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
          itemCount: compScreen2.lostItems5.length,
        ),
      ) ,

    );
  }
}
