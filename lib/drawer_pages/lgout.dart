import 'package:flutter/material.dart';

class lgout extends StatefulWidget {
  const lgout({Key? key}) : super(key: key);

  @override
  _lgoutState createState() => _lgoutState();
}

class _lgoutState extends State<lgout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Help",
            style: TextStyle(color: Colors.black54),
          )),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
