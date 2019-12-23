import 'package:flutter/material.dart';
import '../dummy_data_lost.dart';
import './lost_item_detail.dart';
import '../models/lost_item.dart';
class FoundScreen extends StatelessWidget {
  void displayLostItem(BuildContext ctx, LostItem item){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return LostItemDetail(item);
    }));
   }
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemBuilder: (ctx, index){
          return InkWell(
            onTap: ()=>displayLostItem(context,lostItems[index]),
            child:Card(
                    margin: EdgeInsets.all(8),
                    elevation: 4,
                    color: Color.fromRGBO(255, 254, 229, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                      leading: CircleAvatar( 
                        backgroundColor: Colors.brown,
                        radius: 25,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: (lostItems[index].imageUrl!='')?
                          Image.network(lostItems[index].imageUrl,
                          fit: BoxFit.cover,): 
                          Image.asset('assets/images/no-image.png', fit: BoxFit.cover),
                        ),
                      ),
                      title: Text(lostItems[index].itemTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                        ),),
                      subtitle: (lostItems[index].ownerName!='')? Text('Owner: ${lostItems[index].ownerName}',
                      style: TextStyle(fontWeight: FontWeight.bold), )
                      :Text('Owner: Anonymous',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Found!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                          ),
                        )),
                      ),
                    ),
            )
          );

        },
        itemCount: foundItems.length,
    );
  }
}