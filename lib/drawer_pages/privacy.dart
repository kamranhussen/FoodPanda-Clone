import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  const privacy({Key? key}) : super(key: key);

  @override
  _privacyState createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text(
            "More",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
