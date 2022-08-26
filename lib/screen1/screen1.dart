import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:totars2/home/home.dart';

class screen1 extends StatefulWidget {
  final String resPic;
  final String resName;
  final String resTime;
  final String resDesc;

  const screen1(
      {required this.resPic,
      required this.resName,
      required this.resTime,
      required this.resDesc});

  @override
  State<screen1> createState() => _screen1State();
}

final items = <Widget>[
  Icon(
    Icons.home_filled,
    size: 30,
  ),
  Icon(
    Icons.search,
    size: 30,
  ),
  Icon(
    Icons.favorite_border,
    size: 30,
  ),
  Icon(
    Icons.list_alt_rounded,
    size: 30,
  ),
  Icon(
    Icons.account_circle_outlined,
    size: 30,
  ),
];

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.black87,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.view_list_sharp,
                    color: Colors.black87,
                  ),
                ],
              ))
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => homePage(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 22,
              color: Colors.black87,
            )),
        leadingWidth: 1,
        title: Row(
          children: [
            Text(
              "delevery to\n lebnon",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Icon(Icons.arrow_drop_down_sharp, size: 20, color: Colors.black87)
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 300,
                    width: 430,
                    decoration: BoxDecoration(
                        //    color: Colors.blue,
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage(widget.resPic),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Positioned(
                    bottom: -20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      height: 50,
                      width: 90,
                      child: Column(
                        children: [
                          Text(
                            widget.resTime,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "mins",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      widget.resName,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      widget.resDesc,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.paid_outlined,
                                color: Colors.blue.shade900,
                                size: 20,
                              ),
                              Text(
                                "10% cashback",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade900),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: Colors.red.shade900,
                                size: 20,
                              ),
                              Text(
                                "earn points",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade900),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 10),
                        child: Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                          //padding: EdgeInsets.all(10),

                          height: 60,
                          width: 100,
                          child: Image.asset(
                            "imgs/rating.png",
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.green.shade600,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180, right: 100),
                    child: Text(
                      "Based on 2000 ratings",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Adnan",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ),
                      Container(
                          //padding: EdgeInsets.all(10),

                          height: 60,
                          width: 100,
                          child: Image.asset(
                            "imgs/rating.png",
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("very good resturant and great servese ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Noor",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ),
                      Container(
                          //padding: EdgeInsets.all(10),

                          height: 60,
                          width: 100,
                          child: Image.asset(
                            "imgs/rating.png",
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("delicious food  ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Text("View all 50 comments",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green.shade800,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Icon(
                          Icons.arrow_drop_down_circle,
                          color: Colors.green.shade800,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.green.shade800,
        color: Colors.grey.shade400,
      ),
    );
  }
}
