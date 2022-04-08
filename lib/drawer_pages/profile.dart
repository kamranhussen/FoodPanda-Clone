import 'package:flutter/material.dart';

class pro extends StatelessWidget {
  const pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(200),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightBlueAccent,
                        blurRadius: 60,
                        spreadRadius: 3)
                  ],
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/image/projectApp.jpg"),
                  radius: 180,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "Md Kamran Hussen",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
