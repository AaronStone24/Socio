import './lost_screen.dart';
import 'package:flutter/material.dart';
import '../models/lost_item.dart';
import '../dummy_data_lost.dart';

class NewLostItemScreen extends StatelessWidget {
  final itemNameController=TextEditingController();
  final itemDescriptionController=TextEditingController();
  final ownerNameController=TextEditingController();
  final ownerDetailsController=TextEditingController();
  void addLostItem(BuildContext ctx, {String itemTitle, String itemDescription,String ownerName,String ownerDetails}){
    if(itemTitle=='' || itemDescription==''){
      return;
    }
    lostItems.add(
      LostItem(
        itemId: DateTime.now().toString(),
        itemTitle: itemTitle,
        itemDescription: itemDescription,
        ownerName: ownerName,
        ownerDetails: ownerDetails        
      )
    );
    Navigator.of(ctx).pop();
  } 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(title: Text('Add Lost Item'),),
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
                        decoration: InputDecoration(labelText: 'Item Title'),
                        controller: itemNameController
                        ,),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(labelText: 'Item Description'),
                        controller: itemDescriptionController
                        ,),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(labelText: 'Owner\'s Name (Optional)'),
                        controller: ownerNameController
                        ,),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(labelText: 'Owner\'s Details (Optional)'),
                        controller: ownerDetailsController
                        ,),
                      SizedBox(height: 10,),
                      RaisedButton(
                        elevation: 4 ,
                        child: Text('Add lost item'),
                        onPressed: (){
                          addLostItem(context,itemTitle:itemNameController.text,
                          itemDescription: itemDescriptionController.text,
                          ownerName:ownerNameController.text,
                          ownerDetails: ownerDetailsController.text );
                        },)
                        ],
                      ),
                    )
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Add Image'),
                    SizedBox(width: 10,),
                    Icon(Icons.add_a_photo),
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