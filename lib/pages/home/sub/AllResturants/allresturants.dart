import 'package:flutter/material.dart';
import 'package:projectapp/drawer_pages/favourite.dart';

class AllResturants extends StatefulWidget {
  const AllResturants({Key? key}) : super(key: key);

  @override
  _AllResturantsState createState() => _AllResturantsState();
}

class _AllResturantsState extends State<AllResturants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pinkAccent),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black87, fontSize: 15),
          ),
          backgroundColor: Colors.white,
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => fav()));
                  },
                  icon: Icon(Icons.favorite_border_outlined),
                )
              ],
            )
          ],
        ),
        backgroundColor: Colors.pink,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: Column(
                children: [
                  Card(
                    elevation: 16,
                    child: Container(
                      height: MediaQuery.of(context).size.height * .25,
                      width: MediaQuery.of(context).size.width * .97,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .16,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/icecream.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 6, bottom: 5, left: 15),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                        color: Colors.white,
                                        child: Text(
                                          "Snack's Lane Uposhohor",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "৳ Fast Food, Snacks, Sandwiches etc",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "৳ 30 delivery fee",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    child: ImageIcon(AssetImage("asset/image/star-removebg-.png")),
                                  )
                                ],
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
