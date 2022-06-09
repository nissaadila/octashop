import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:octashop/pages/login.dart';
import 'package:octashop/pages/voucher.dart';

class HomePage extends StatefulWidget {
  final String username;
  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var name;

  @override
  Widget build(BuildContext context) {
    name = widget.username;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            toolbarHeight: 70.0,
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 50,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            }),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Align(
              child: Image.asset(
                'assets/logo.png',
                height: 70,
                width: 70,
              ),
              alignment: Alignment.centerRight,
            ),
          )),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xffefba9b)),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Color(0xffefba9b),
                      ),
                    ),
                    title: Text('$name',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                )),
            ListTile(
                leading: Icon(Icons.home, color: Color(0xff446382)),
                title: Text("Home"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(username: name)))),
            ListTile(
                leading:
                    Icon(CupertinoIcons.ticket_fill, color: Color(0xff446382)),
                title: Text("Voucher"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VoucherPage(username: name)))), //voucher page
            ListTile(
                leading: Icon(CupertinoIcons.info_circle_fill,
                    color: Color(0xff446382)),
                title: Text("News and Promotion"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage()))), //news page
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            ListTile(
                leading: Icon(Icons.logout, color: Color(0xff446382)),
                title: Text("Log Out"),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage())))
          ],
        ),
      ),
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Hello, $name!",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)))),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 40),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Welcome to OctaShop",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))),
        CarouselSlider(
            items: [
              Image(image: AssetImage('assets/1.png')),
              Image(image: AssetImage('assets/2.png')),
              Image(image: AssetImage('assets/3.png'))
            ],
            options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                height: 200,
                viewportFraction: 1,
                autoPlayInterval: Duration(seconds: 3))),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Octashop is an application specially created for mobile gamers around the world to easily top up their favorite games with ease.",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal)))),
        Container(
            margin: EdgeInsets.all(30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "We support top-up for games like Mobile Legend, PUBG, Valorant, Free Fire, and many more.",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal))))
      ]),
    );
  }
}