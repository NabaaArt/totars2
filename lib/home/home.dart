import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:totars2/data/data.dart';
import 'package:totars2/screen1/screen1.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
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

class _homePageState extends State<homePage> {
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
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Green Class",
                        style: TextStyle(
                            color: Colors.green.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.green.shade900,
                      size: 25,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "3.8K",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "point",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.black87,
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 4,
                    width: 25,
                    color: Colors.green.shade900,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                  SizedBox(
                    width: 5,
                  ),
                  line(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "9 orders to unlock the golden class",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => screen1(
                          resPic: pic1,
                          resName: resName1,
                          resTime: time1,
                          resDesc: desc1,
                        )));
              },
              child: Container(
                height: 330,
                // clipBehavior: Clip.none,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  pic(pic1, time1, resName1, desc1),
                  pic(pic2, time2, resName2, desc2),
                  pic(pic3, time2, resName3, desc3),
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 220,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      information(name1, icon1),
                      information(name2, icon2),
                      information(name3, icon3),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //  crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        information(name4, icon4),
                        information(name5, icon5),
                        information(name6, icon6),
                      ]),
                ],
              ),
            ),
            Container(
              height: 10,
              width: 400,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "weekly discounts",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                        Text(
                          "get 50% discount this week",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  )
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

  Container line() {
    return Container(
      height: 4,
      width: 25,
      color: Colors.grey,
    );
  }

  Container pic(
      String picture, String time, String resturantNamme, String describtion) {
    return Container(
        width: 430,
        decoration: BoxDecoration(
            //    color: Colors.blue,

            image: DecorationImage(
          image: AssetImage(picture),
        )),
        child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: 20,
                //   right: -5,
                child: Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 9,
                            color: Colors.grey.shade300)
                      ]),
                  child: Column(
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "mins",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        spreadRadius: 10,
                        color: Colors.grey.shade200),
                  ]),
                  height: 70,
                  width: 200,
                ),
              ),
              Positioned(
                  bottom: 40,
                  left: 3,
                  //right: 30,
                  child: Text(
                    describtion,
                    style: TextStyle(fontSize: 15),
                  )),
              Positioned(
                  bottom: 59,
                  left: 3,
                  child: Text(
                    resturantNamme,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  //     top: 300,
                  bottom: 10,
                  left: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.paid_outlined,
                                color: Colors.blue.shade900,
                                size: 17,
                              ),
                              Text(
                                "10% cashback",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade900),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          height: 25,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: Colors.red.shade900,
                                size: 17,
                              ),
                              Text(
                                "earn points",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade900),
                              ),
                            ],
                          )),
                    ],
                  )),
            ]));
  }

  Container information(String info, String icon) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: BoxShadow
        boxShadow: [
          BoxShadow(
            spreadRadius: 4,
            blurRadius: 10,
            color: Colors.grey.shade300,
          )
        ],

        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          //  height: 200,
          //   width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        icon,
                      )),
                  Text(
                    info,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
