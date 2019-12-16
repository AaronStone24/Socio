import 'package:flutter/material.dart';
import 'package:startup_namer/screens/TitleTheme.dart';
AppBarTheme topAppBarTheme=
        AppBarTheme(
          color: Colors.blueGrey[700],
          textTheme: TextTheme(
            title: titleTheme,
          ),
          iconTheme: IconThemeData(
            color: Colors.orange[500],
            opacity: 0.7,
          ),
        );


AppBarTheme selectedTopAppBarTheme=AppBarTheme(
  color: Colors.blueGrey[200],
  textTheme: TextTheme(
    title: titleTheme,
  ),
  iconTheme: IconThemeData(
    color: Colors.black,
    opacity: 0.7,
  ),
  actionsIconTheme: IconThemeData(
    color: Colors.black,
    opacity: 0.7,
  ),
);