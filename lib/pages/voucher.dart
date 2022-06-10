import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';
import 'package:octashop/pages/login.dart';
import 'package:octashop/pages/newsandpromotion.dart';
import 'package:octashop/pages/voucher_detail.dart';

class VoucherPage extends StatefulWidget {
  final String username;

  VoucherPage({Key? key, required this.username}) : super(key: key);

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
    Konten('assets/diamond.png', 'Diamonds', '28', "9.850"),
    Konten('assets/diamond.png', 'Diamonds', '36', "12.500"),
    Konten('assets/diamond.png', 'Diamonds', '59', "18.600"),
    Konten('assets/diamond.png', 'Diamonds', '74', "22.000"),
    Konten('assets/diamond.png', 'Diamonds', '85', "24.500")
  ];

  List<Konten> _freefire = [
    Konten('assets/diamond.png', 'Diamonds', '1075', "147.000"),
    Konten('assets/diamond.png', 'Diamonds', '1080', "150.000"),
    Konten('assets/diamond.png', 'Diamonds', '1450', "197.000"),
    Konten('assets/diamond.png', 'Diamonds', '2000', "267.000"),
    Konten('assets/diamond.png', 'Diamonds', '7290', "979.000")
  ];

  List<Konten> _valorant = [
    Konten('assets/point.png', 'Points', '1120', "128.500"),
    Konten('assets/point.png', 'Points', '1375', "148.500"),
    Konten('assets/point.png', 'Points', '1795', "198.000"),
    Konten('assets/point.png', 'Points', '2075', "227.000"),
    Konten('assets/point.png', 'Points', '2400', "247.000")
  ];

  List<Konten> _ragnarok = [
    Konten('assets/diamond.png', 'Diamonds', '2500', "63.000"),
    Konten('assets/diamond.png', 'Diamonds', '5000', "125.000"),
    Konten('assets/diamond.png', 'Diamonds', '7500', "184.000"),
    Konten('assets/diamond.png', 'Diamonds', '10000', "245.000"),
    Konten('assets/diamond.png', 'Diamonds', '15300', "401.000")
  ];

  List<Konten> _genshin = [
    Konten('assets/gCrystal.png', 'G.Crystals', '60', "13.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '300', "60.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '980', "180.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '1980', "360.000"),
    Konten('assets/gCrystal.png', 'G.Crystals', '3280', "600.00")
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
                preferredSize: Size.fromHeight(130.0),
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
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
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
                            title: Text(widget.username,
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
                                builder: (context) =>
                                    HomePage(username: widget.username)))),
                    ListTile(
                        leading: Icon(CupertinoIcons.ticket_fill,
                            color: Color(0xff446382)),
                        title: Text("Voucher"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VoucherPage(
                                    username:
                                        widget.username)))), //voucher page
                    ListTile(
                        leading: Icon(CupertinoIcons.info_circle_fill,
                            color: Color(0xff446382)),
                        title: Text("News and Promotion"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NewsAndPromotionPage(username: widget.username)))), //news page
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    ListTile(
                        leading: Icon(Icons.logout, color: Color(0xff446382)),
                        title: Text("Log Out"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage())))
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
                                          'IDR ' + card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => Navigator.push(
                                              _context,
                                              MaterialPageRoute(
                                                  builder: (_context) =>
                                                      VoucherDetailPage(
                                                          username:
                                                              widget.username,
                                                          game: 'Mobile Legend',
                                                          image:
                                                              'assets/mobileLegend.png',
                                                          qty: card.qty +
                                                              " " +
                                                              card.currency,
                                                          price: card.price))),
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
                                          'IDR ' + card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => Navigator.push(
                                              _context,
                                              MaterialPageRoute(
                                                  builder: (_context) =>
                                                      VoucherDetailPage(
                                                          username:
                                                              widget.username,
                                                          game: 'Free Fire',
                                                          image:
                                                              'assets/freefire.png',
                                                          qty: card.qty +
                                                              " " +
                                                              card.currency,
                                                          price: card.price))),
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
                                          'IDR ' + card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => Navigator.push(
                                              _context,
                                              MaterialPageRoute(
                                                  builder: (_context) =>
                                                      VoucherDetailPage(
                                                          username:
                                                              widget.username,
                                                          game: 'Valorant',
                                                          image:
                                                              'assets/valorant.png',
                                                          qty: card.qty +
                                                              " " +
                                                              card.currency,
                                                          price: card.price))),
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
                                          'IDR ' + card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => Navigator.push(
                                              _context,
                                              MaterialPageRoute(
                                                  builder: (_context) =>
                                                      VoucherDetailPage(
                                                          username:
                                                              widget.username,
                                                          game: 'Ragnarok X',
                                                          image:
                                                              'assets/ragnarok.png',
                                                          qty: card.qty +
                                                              " " +
                                                              card.currency,
                                                          price: card.price))),
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
                                          'IDR ' + card.price,
                                          style: TextStyle(
                                              fontSize: 16, height: 1.5),
                                        ),
                                        trailing: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff446382)),
                                          onPressed: () => Navigator.push(
                                              _context,
                                              MaterialPageRoute(
                                                  builder: (_context) =>
                                                      VoucherDetailPage(
                                                          username:
                                                              widget.username,
                                                          game:
                                                              'Genshin Impact',
                                                          image:
                                                              'assets/genshin.png',
                                                          qty: card.qty +
                                                              " " +
                                                              card.currency,
                                                          price: card.price))),
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
