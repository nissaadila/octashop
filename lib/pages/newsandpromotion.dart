import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';
import 'package:octashop/pages/voucher.dart';
import 'package:octashop/pages/login.dart';

class NewsAndPromotionPage extends StatefulWidget {
  final String username;
  NewsAndPromotionPage({Key? key, required this.username});
  @override
  State<StatefulWidget> createState() {
    return NewsAndPromotionPageState();
  }
}

class NewsAndPromotionPageState extends State<NewsAndPromotionPage> {
  // This widget is the root of your application.
  var name;
  // ignore: unused_field
  int _currentInndex = 0;

  List cardList = [
    ContentCard1(),
    ContentCard2(),
    ContentCard3(),
    ContentCard4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    name = widget.username;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          actions: [
            Container(
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: 50,
              ),
            )
          ],
        ),
      ),
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
                  title: Text(
                    'User',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
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
                        builder: (context) =>
                            VoucherPage(username: name)))), //voucher page
            ListTile(
                leading: Icon(CupertinoIcons.info_circle_fill,
                    color: Color(0xff446382)),
                title: Text("News and Promotion"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsAndPromotionPage(
                              username: name,
                            )))), //news page
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
      body: Column(
        children: <Widget>[
          Container(
              child: Align(
            alignment: Alignment.center,
            child: Text(
              '\n News and Promotion \n',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          )),
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              aspectRatio: 2 / 1,
              initialPage: 1,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enlargeCenterPage: true,
              onPageChanged: (index, reason) => setState(() {
                _currentInndex = index;
              }),
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: 300.0,
                  width: 300.0,
                  child: Card(
                    color: Colors.blueAccent,
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
        ],
      ),
    ));
  }
}

class ContentCard1 extends StatelessWidget {
  const ContentCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          left: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          right: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          bottom: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/valorant.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          ),
          Text('\n Promotion Valorant',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold)),
          Text(
              '\n Top up valorant now and get the bonus. Periode 21 - 31 March 2022. Limited Edition !!!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              )),
        ],
      ),
    );
  }
}

class ContentCard2 extends StatelessWidget {
  const ContentCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          left: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          right: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          bottom: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/freefire.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          ),
          Text('\n News Free Fire',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold)),
          Text(
              '\n Free Fire has announced a new team challenge for its new Bomb Squad: 5v5 mode running from 3 to 12 June !!!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              )),
        ],
      ),
    );
  }
}

class ContentCard3 extends StatelessWidget {
  const ContentCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          left: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          right: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          bottom: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/mobilelegend.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          ),
          Text('\n Promotion Mobile Legend',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold)),
          Text(
              '\n Top up diamond Mobile Legend now and get the bonus. Exclusive !!!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              )),
        ],
      ),
    );
  }
}

class ContentCard4 extends StatelessWidget {
  const ContentCard4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          left: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          right: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
          bottom: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/genshin.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          ),
          Text('\n News Genshin Impact',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold)),
          Text(
              '\n The Genshin Impact version on Google PC will enter beta testing in select regions on May 31 at 08:00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              )),
        ],
      ),
    );
  }
}
