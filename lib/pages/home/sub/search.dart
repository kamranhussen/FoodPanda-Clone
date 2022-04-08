import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onTap: () {},
      backgroundColor: Colors.pink,
      prefixIcon: Icon(
        Icons.search,
        color: Colors.white,
        size: 23,
      ),
      placeholderStyle: TextStyle(color: Colors.white, fontSize: 20),
      padding: EdgeInsets.all(10),
      borderRadius: BorderRadius.all(Radius.circular(15)),
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}
