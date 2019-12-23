import 'package:flutter/material.dart';
import '../dummy_garbage_data.dart';
class c1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _c1();
  }

}
class _c1 extends State<c1>{
  bool checkBoxValue=true;
  @override
  Widget build(BuildContext context) {
    var cc=Checkbox(
      value: checkBoxValue,
      onChanged: (bool value){
        setState(() {
          checkBoxValue=value;
        });
      },
    );
    return cc;
  }

}
class DutyAreasScreen extends StatelessWidget {
  final int a;
  DutyAreasScreen(this.a);
  Widget getListView() {

  var listView =  ListView.builder(
            shrinkWrap: true,scrollDirection: Axis.vertical,
            itemCount: garbageCollectors[a].allotedFlats.length
              ,
              itemBuilder: (ctx,index2){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  title: Text(
                    garbageCollectors[a].allotedFlats[index2],
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(garbageCollectors[a].shiftDetails,),
                  leading: Icon(Icons.arrow_forward_ios),
                  trailing:c1()
                ),
              ),
            ),
          );}
          );



  return listView;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Duty Areas'),
      ),
      body: Material(
            child: getListView(),
          ),
    );
  }
}