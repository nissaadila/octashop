import 'package:flutter/material.dart';

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
    Konten('assets/gCrystal.png', 'G.Crystals', '28', "IDR 9.850"),
    Konten('assets/gCrystal.png', 'G.Crystals', '36', "IDR 12.500"),
    Konten('assets/gCrystal.png', 'G.Crystals', '59', "IDR 18.600"),
    Konten('assets/gCrystal.png', 'G.Crystals', '74', "IDR 22.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '85', "IDR 24.500")
  ];

  @override
  Widget build(BuildContext context) {
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
                          onTap: () => print('Log Out button is clicked')),
                    ),
                  ],
                ),
              ),
              body: TabBarView(children: [
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
              ]))),
    );
  }
}
