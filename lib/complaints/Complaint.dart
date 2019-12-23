import 'package:flutter/material.dart';

class Complaint extends StatelessWidget{
  final String subject,description,topic;
  Complaint(this.subject,this.description,this.topic);
  bool isEmpty(Complaint c){
    if(c.subject.isEmpty&&c.description.isEmpty)
      return true;
    return false;
  }
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            title: Text(
              subject,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(description),
            ),
          ),
        ),
      ),
    );
  }
}