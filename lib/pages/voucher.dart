import 'package:flutter/material.dart';
import 'package:octashop/pages/login.dart';

class VoucherPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VoucherPageState();
}

class TabLayout {
  final String image;

  TabLayout(this.image);
}

class Konten {
  final String image;
  final String currency;
  final String qty;
  final String price;

  Konten(this.image, this.currency, this.qty, this.price);
}

class VoucherPageState extends State<VoucherPage> {
  var _context = null;

  List<TabLayout> _tabs = [
    TabLayout('assets/mobileLegend.png'),
    TabLayout('assets/freefire.png'),
    TabLayout('assets/valorant.png'),
    TabLayout('assets/ragnarok.png'),
    TabLayout('assets/genshin.png'),
  ];

  List<Konten> _mobilelegend = [
    Konten('assets/diamond.png', 'Diamonds', '28', "IDR 9.850"),
    Konten('assets/diamond.png', 'Diamonds', '36', "IDR 12.500"),
    Konten('assets/diamond.png', 'Diamonds', '59', "IDR 18.600"),
    Konten('assets/diamond.png', 'Diamonds', '74', "IDR 22.000"),
    Konten('assets/diamond.png', 'Diamonds', '85', "IDR 24.500")
  ];

  List<Konten> _freefire = [
    Konten('assets/diamond.png', 'Diamonds', '1075', "IDR 147.000"),
    Konten('assets/diamond.png', 'Diamonds', '1080', "IDR 150.000"),
    Konten('assets/diamond.png', 'Diamonds', '1450', "IDR 197.000"),
    Konten('assets/diamond.png', 'Diamonds', '2000', "IDR 267.000"),
    Konten('assets/diamond.png', 'Diamonds', '7290', "IDR 979.000")
  ];

  List<Konten> _valorant = [
    Konten('assets/point.png', 'Points', '1120', "IDR 128.500"),
    Konten('assets/point.png', 'Points', '1375', "IDR 148.500"),
    Konten('assets/point.png', 'Points', '1795', "IDR 198.000"),
    Konten('assets/point.png', 'Points', '2075', "IDR 227.000"),
    Konten('assets/point.png', 'Points', '2400', "IDR 247.000")
  ];

  List<Konten> _ragnarok = [
    Konten('assets/diamond.png', 'Diamonds', '2500', "IDR 63.000"),
    Konten('assets/diamond.png', 'Diamonds', '5000', "IDR 125.000"),
    Konten('assets/diamond.png', 'Diamonds', '7500', "IDR 184.000"),
    Konten('assets/diamond.png', 'Diamonds', '10000', "IDR 245.000"),
    Konten('assets/diamond.png', 'Diamonds', '15300', "IDR 401.000")
  ];

  List<Konten> _genshin = [
    Konten('assets/gCrystal.png', 'G.Crystals', '60', "IDR 13.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '300', "IDR 60.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '980', "IDR 180.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '1980', "IDR 360.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '3280', "IDR 600.00")
  ];

  @override
  Widget build(BuildContext context) {
    _context = context;
    return MaterialApp(
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
              backgroundColor: Color(0xffefba9b),
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(120.0),
                child: AppBar(
                  iconTheme: IconThemeData(color: Colors.black),
                  actions: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 5),
                      child: Image.asset('assets/logo.png', height: 50),
                    )
                  ],
                  backgroundColor: Colors.white,
                  elevation: 0,
                  bottom: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Color(0xffefba9b)),
                    tabs: _tabs
                        .map((TabLayout tab) => Tab(
                              icon: Image.asset(tab.image),
                            ))
                        .toList(),
                  ),
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
                            title: Text('User',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Color(0xff446382),
                            size: 32,
                          ),
                          title: Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff446382)),
                          ),
                          onTap: () => print('Home button is clicked')),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: ListTile(
                          leading: Icon(
                            Icons.local_offer,
                            color: Color(0xff446382),
                            size: 30,
                          ),
                          title: Text(
                            'Voucher',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff446382)),
                          ),
                          onTap: () => print('Voucher button is clicked')),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: ListTile(
                          leading: Icon(
                            Icons.info,
                            color: Color(0xff446382),
                            size: 32,
                          ),
                          title: Text(
                            'News and Promotion',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff446382)),
                          ),
                          onTap: () =>
                              print('News and Promotion button is clicked')),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Divider(
                        color: Color(0xff446382),
                        thickness: 1.5,
                        indent: 30,
                        endIndent: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Color(0xff446382),
                            size: 32,
                          ),
                          title: Text(
                            'Log Out',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff446382)),
                          ),
                          onTap: () => Navigator.push(
                              _context,
                              MaterialPageRoute(
                                  builder: (_context) => LoginPage()))),
                    ),
                  ],
                ),
              ),
              body: Container(
                margin: EdgeInsets.only(top: 20),
                child: TabBarView(children: [
                  Column(children: [
                    Expanded(
                        child: ListView(
                      children: _mobilelegend
                          .map(
                            (Konten card) => Container(
                                margin: EdgeInsets.only(
                                    top: 5, right: 20, left: 20, bottom: 20),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 8,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: ListTile(
                                        leading: Image.asset(
                                          card.image,
                                          height: 40,
                                        ),
                                        title: Text(
                                          card.qty + '  ' + card.currency,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text(
                                          card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => print('book'),
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ))),
                          )
                          .toList(),
                    ))
                  ]),
                  Column(children: [
                    Expanded(
                        child: ListView(
                      children: _freefire
                          .map(
                            (Konten card) => Container(
                                margin: EdgeInsets.only(
                                    top: 15, right: 20, left: 20, bottom: 10),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 8,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: ListTile(
                                        leading: Image.asset(
                                          card.image,
                                          height: 40,
                                        ),
                                        title: Text(
                                          card.qty + '  ' + card.currency,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text(
                                          card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => print('book'),
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ))),
                          )
                          .toList(),
                    ))
                  ]),
                  Column(children: [
                    Expanded(
                        child: ListView(
                      children: _valorant
                          .map(
                            (Konten card) => Container(
                                margin: EdgeInsets.only(
                                    top: 15, right: 20, left: 20, bottom: 10),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 8,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: ListTile(
                                        leading: Image.asset(
                                          card.image,
                                          height: 40,
                                        ),
                                        title: Text(
                                          card.qty + '  ' + card.currency,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text(
                                          card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => print('book'),
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ))),
                          )
                          .toList(),
                    ))
                  ]),
                  Column(children: [
                    Expanded(
                        child: ListView(
                      children: _ragnarok
                          .map(
                            (Konten card) => Container(
                                margin: EdgeInsets.only(
                                    top: 15, right: 20, left: 20, bottom: 10),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 8,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: ListTile(
                                        leading: Image.asset(
                                          card.image,
                                          height: 40,
                                        ),
                                        title: Text(
                                          card.qty + '  ' + card.currency,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text(
                                          card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => print('book'),
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ))),
                          )
                          .toList(),
                    ))
                  ]),
                  Column(children: [
                    Expanded(
                        child: ListView(
                      children: _genshin
                          .map(
                            (Konten card) => Container(
                                margin: EdgeInsets.only(
                                    top: 15, right: 20, left: 20, bottom: 10),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 8,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: ListTile(
                                        leading: Image.asset(
                                          card.image,
                                          height: 40,
                                        ),
                                        title: Text(
                                          card.qty + '  ' + card.currency,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text(
                                          card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => print('book'),
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ))),
                          )
                          .toList(),
                    ))
                  ]),
                ]),
              ))),
    );
  }
}
