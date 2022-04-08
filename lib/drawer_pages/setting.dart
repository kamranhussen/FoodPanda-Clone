import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text(
            "Settings",
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
