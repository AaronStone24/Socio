import 'package:flutter/material.dart';
import './Complaint.dart';
import './MyComplaints.dart';

class ComplaintForm extends StatefulWidget{
  final String gridName;
  ComplaintForm(this.gridName);
  @override
  _ComplaintFormState createState()=> _ComplaintFormState();
}
class _ComplaintData{
  String subject="";
  String description="";
}

class _ComplaintFormState extends State<ComplaintForm>{
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  _ComplaintData _data=_ComplaintData();

  Complaint complaint=Complaint("","","");
  
  void submit(){
    _formKey.currentState.save();
    complaint=Complaint(_data.subject,_data.description,widget.gridName);
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MyComplaints(complaint)));
  }
  
  @override
  Widget build(BuildContext context){
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('${widget.gridName} Complaint'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextFormField( // Use email input type for emails.
                  decoration: new InputDecoration(
                    hintText: 'Enter the subject for your complaint',
                    labelText: 'Subject',
                    labelStyle: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[700]),
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                    focusColor: Colors.orange
                  ),
                  onSaved: (String value){
                    this._data.subject=value;
                  },
                ),
              ),
              new TextFormField(
                obscureText: false,
                decoration: new InputDecoration(
                  hintText: 'Enter description for your complaint',
                  labelText: 'Description',
                  labelStyle: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[700]),
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                  focusColor: Colors.orange,
                ),
                onSaved: (String value){
                  this._data.description=value;
                },
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.red)
                  ),
                  child: new Text(
                    'Submit',
                    style: new TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white
                    ),
                  ),
                  onPressed: this.submit,
                  color: Colors.orange,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}