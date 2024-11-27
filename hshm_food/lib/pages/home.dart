import 'package:flutter/material.dart';
import 'package:hshm_food/admin/admin_login.dart';
import 'package:hshm_food/pages/details.dart';
import 'package:hshm_food/service/database.dart';
import 'package:hshm_food/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pizzaa = false,
      burger = false,
      salad = false,
      icecream = false,
      chicken = false,
      biryani = false;

  Stream? fooditemStream;
  ontheload() async {
    fooditemStream = await DatabaseMethods().getFoodItem("pizza");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Hashsham,", style: AppWidget.boldTextFieldStyle()),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AdminLogin()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.admin_panel_settings,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Text("Delicious Food", style: AppWidget.HeadlineTextFieldStyle()),
            Text("Discover and Get Great Food",
                style: AppWidget.lightTextFieldStyle()),
            SizedBox(
              height: 10,
            ),
            showItem(),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/salad.png",
                                  height: 175, width: 175, fit: BoxFit.cover),
                              Text("veggie Teco Hash",
                                  style: AppWidget.SemiBoldTextFieldStyle()),
                              Text("Fresh and Healthy",
                                  style:
                                      AppWidget.LightSemiBoldTextFieldStyle()),
                              Text("\$25",
                                  style: AppWidget.SemiBoldTextFieldStyle()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/biryani.png",
                                height: 175, width: 175, fit: BoxFit.cover),
                            Text("Chicken Biryani",
                                style: AppWidget.SemiBoldTextFieldStyle()),
                            Text("Fresh and Testy",
                                style: AppWidget.LightSemiBoldTextFieldStyle()),
                            Text("\$79",
                                style: AppWidget.SemiBoldTextFieldStyle()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/burger.png",
                                height: 175, width: 175, fit: BoxFit.cover),
                            Text("Veg Burger",
                                style: AppWidget.SemiBoldTextFieldStyle()),
                            Text("Fresh and Spicy",
                                style: AppWidget.LightSemiBoldTextFieldStyle()),
                            Text("\$39",
                                style: AppWidget.SemiBoldTextFieldStyle()),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/chicken.png",
                        height: 125,
                        width: 125,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Spicy Chicken Lollypop half plate(3pcs)",
                              style: AppWidget.SemiBoldTextFieldStyle(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Fresh and Spicy",
                              style: AppWidget.LightSemiBoldTextFieldStyle(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "\$50",
                              style: AppWidget.SemiBoldTextFieldStyle(),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/chicken.png",
                        height: 125,
                        width: 125,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Spicy Chicken Lollypop half plate(3pcs)",
                              style: AppWidget.SemiBoldTextFieldStyle(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Fresh and Spicy",
                              style: AppWidget.LightSemiBoldTextFieldStyle(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "\$50",
                              style: AppWidget.SemiBoldTextFieldStyle(),
                            ),
                          )
                        ],
                      )
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

  Widget showItem() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              pizzaa = true;
              burger = false;
              salad = false;
              icecream = false;
              chicken = false;
              biryani = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: pizzaa
                        ? Color.fromARGB(210, 222, 246, 124)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "images/pizzaa.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () {
              pizzaa = false;
              burger = true;
              salad = false;
              icecream = false;
              chicken = false;
              biryani = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                    color: burger
                        ? Color.fromARGB(199, 126, 184, 223)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "images/burger.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () {
              pizzaa = false;
              burger = false;
              salad = true;
              icecream = false;
              chicken = false;
              biryani = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                    color: salad
                        ? const Color.fromARGB(255, 236, 119, 119)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "images/salad.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () {
              pizzaa = false;
              burger = false;
              salad = false;
              icecream = true;
              chicken = false;
              biryani = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                    color: icecream
                        ? const Color.fromARGB(216, 116, 230, 110)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "images/icecream.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () {
              pizzaa = false;
              burger = false;
              salad = false;
              icecream = false;
              chicken = true;
              biryani = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                    color: chicken
                        ? const Color.fromARGB(255, 215, 245, 108)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "images/chicken.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () {
              pizzaa = false;
              burger = false;
              salad = false;
              icecream = false;
              chicken = false;
              biryani = true;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                    color: biryani
                        ? const Color.fromARGB(196, 130, 220, 135)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "images/biryani.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
