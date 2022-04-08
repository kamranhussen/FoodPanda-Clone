import 'package:flutter/material.dart';

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

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
    ;
  }
}
