import 'package:flutter/material.dart';

class fav extends StatelessWidget {
  const fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Favourites",
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
