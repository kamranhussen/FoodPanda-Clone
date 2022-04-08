import 'package:flutter/material.dart';
import 'package:projectapp/drawer_pages/cart.dart';

class PandMart extends StatefulWidget {
  const PandMart({Key? key}) : super(key: key);

  @override
  _PandMartState createState() => _PandMartState();
}

class _PandMartState extends State<PandMart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => cart(),
      )),
      child: Container(
        height: MediaQuery.of(context).size.height * .30,
        width: MediaQuery.of(context).size.width * .48,
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(right: 50),
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.white10, blurRadius: 60)
                ]),
                child: Image(
                  image: AssetImage("asset/image/food3.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Panda Mart",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Grocery delivered in 30 mins!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
