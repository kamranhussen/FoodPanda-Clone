import 'package:flutter/material.dart';
import 'package:projectapp/pages/home/homePage.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // backgroundColor: Colors.black,
        primarySwatch: Colors.yellow,
        canvasColor: Colors.white,
        // primaryColor: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}
