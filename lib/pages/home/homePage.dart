import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:projectapp/drawer/drawer.dart';
import 'package:projectapp/pages/home/sub/FoodDelivery/foodDelivery.dart';
import 'package:projectapp/pages/home/sub/pick_up.dart';
import 'package:projectapp/pages/home/sub/search.dart';
import 'package:projectapp/pages/home/sub/shops.dart';

import '../../drawer_pages/cart.dart';
import 'sub/pandamart.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pinkAccent),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cart()));
              },
              icon: Icon(Icons.shopping_cart_rounded))
        ],
      ),
      drawer: MyDrawer(),
      // backgroundColor: Colors.white10,
      body: ListView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        children: [
          Search(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          FoodDelivery(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PandMart(),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Shops(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    PickUp(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "Your Restaurants",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  children: [
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .68,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image:
                                        AssetImage("asset/image/icecream.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 5),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .01,
                    ),
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .68,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage("asset/image/row7.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 5),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .01,
                    ),
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .68,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage("asset/image/row3.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 5),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .01,
                    ),
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .68,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage("asset/image/row4.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 5),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .01,
                    ),
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .68,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage("asset/image/row5.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 5),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .01,
                    ),
                    Card(
                      elevation: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .68,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .18,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage("asset/image/row6.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 5),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
