import 'package:flutter/material.dart';

class EmergencyAlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Alerts'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(fillColor: Colors.white54,
                   labelText:"Explain the situation:",
                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                   )
                 ),
               ),
            ),
             SizedBox(
               height: 5,
             ),
              RaisedButton(
                color: Colors.red[400],
                child:Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("Send Alert!",
                   style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
               ),
                ),
               elevation: 5.0,
              onPressed: (){
                Navigator.of(context).pop();
               },
              ),
          ]
        ),
      )
   );
 }
}