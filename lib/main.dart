import 'package:flutter/material.dart';
import 'package:startup_namer/ScreenList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
        ThemeData(
        accentColor: Colors.blueGrey[500],
        fontFamily: 'Montserrat',
        selectedRowColor: Colors.orange[500],
        unselectedWidgetColor: Colors.orange[100],
        disabledColor: Colors.grey[700],
        appBarTheme: topAppBarTheme,
        primaryIconTheme: IconThemeData(color: Colors.orange[600])
      ),
      home: HomePage(),
    );
  }
}

