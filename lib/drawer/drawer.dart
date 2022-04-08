import 'package:flutter/material.dart';
import 'package:projectapp/drawer_pages/address/address.dart';
import 'package:projectapp/drawer_pages/favourite.dart';
import 'package:projectapp/drawer_pages/help.dart';
import 'package:projectapp/drawer_pages/lgout.dart';
import 'package:projectapp/drawer_pages/order.dart';
import 'package:projectapp/drawer_pages/privacy.dart';
import 'package:projectapp/drawer_pages/profile.dart';
import 'package:projectapp/drawer_pages/reward.dart';
import 'package:projectapp/drawer_pages/setting.dart';
import 'package:projectapp/drawer_pages/voucher.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black87,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.pinkAccent),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("asset/image/projectApp.jpg"),
                        radius: 48,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => setting(),
                          )),
                          icon: Icon(Icons.more_vert),
                          alignment: AlignmentDirectional.topStart,
                          padding: EdgeInsets.only(left: 140),
                        ),
                        Container(
                          // alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Text(
                            "Md Kamran Hussen",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    )
                  ],
                )),
            ListTile(
              onTap: () {},
              title: Text(
                "Refund account",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Balance and payment methods",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white54,
              endIndent: 10,
              indent: 10,
            ),
            lstl(
                btn: fav(),
                xtext: "Favourites",
                icon: Icons.favorite_outline_sharp),
            lstl(
                btn: order(), xtext: "Order & reordering", icon: Icons.reorder),
            lstl(btn: pro(), xtext: "Profile", icon: Icons.person),
            lstl(
                btn: add(),
                xtext: "Addresses",
                icon: Icons.location_on_outlined),
            lstl(
                btn: reward(),
                xtext: "Challenges & rewards",
                icon: Icons.wine_bar_rounded),
            lstl(
                btn: voucher(),
                xtext: "Vouchers",
                icon: Icons.wallet_giftcard_rounded),
            lstl(
                btn: help(),
                xtext: "Help center",
                icon: Icons.help_outline_outlined),
            Divider(
              color: Colors.white54,
            ),
            wtlstl(txt: 'Setting', ibtn: setting()),
            wtlstl(txt: 'Terms & Conditions/Privacy', ibtn: privacy()),
            wtlstl(txt: 'Log out', ibtn: lgout()),
          ],
        ),
      ),
    );
  }

  Widget lstl(
          {required String xtext,
          required IconData icon,
          required Widget btn}) =>
      ListTile(
        title: Text(
          "$xtext",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        leading: Icon(
          icon,
          color: Colors.red,
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => btn));
        },
      );

  Widget wtlstl({required String txt, required Widget ibtn}) => ListTile(
        subtitle: Text(
          "$txt",
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ibtn));
        },
      );
}
