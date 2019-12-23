import '../models/lost_item.dart';
import 'package:flutter/material.dart';
class LostItemDetail extends StatelessWidget {
  final LostItem item;
  LostItemDetail(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text('${item.itemTitle}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: (item.imageUrl=='')?Image.asset('assets/images/no-image.png', fit: BoxFit.cover)
              : Image.network(item.imageUrl,
              fit: BoxFit.cover),
            ),
            ClipRRect(
               borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
               ),
               child: Container(
                 width: double.infinity,
                 child: Card(
                   child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[
                            Text('Title: '),
                            Text(item.itemTitle)
                          ]
                        ),
                        TableRow(
                          children: <Widget>[
                            Text('Description: '),
                            Text(item.itemDescription),
                          ]
                         ),
                          TableRow(
                          children: <Widget>[
                            Text('Owner: '),
                            (item.ownerName!="")? Text(item.ownerName):Text("Anonymous"),
                          ]
                         ),
                         TableRow(
                           children: <Widget>[
                             Text('Owner Details: '),
                             (item.ownerDetails!='')? Text(item.ownerDetails):Text("Not Available"),
                           ]
                         ),

                       ],
                     ),
                   )
                    
                       
                     
                   ),
               ),
            )
          ],
        )
      ),
    );
  }
}