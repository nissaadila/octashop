import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/voucher.dart';

class VoucherDetailPage extends StatefulWidget {
  final String username;
  final String game;
  final String image;
  final String qty;
  final String price;

  VoucherDetailPage(
      {Key? key,
      required this.username,
      required this.game,
      required this.image,
      required this.qty,
      required this.price})
      : super(key: key); 

  @override
  State<StatefulWidget> createState() => VoucherDetailPageState();
}

class VoucherDetailPageState extends State<VoucherDetailPage> {
  var _context = null;
  var _userId = TextEditingController();
  var _error = null;

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(_context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _validate() {
    final _id = num.tryParse(_userId.text);
    if (_userId.text == "") {
      setState(() {
        _error = 'User ID cannot be empty';
      });
    } else if (_id == null) {
      setState(() {
        _error = 'User ID must all number';
      });
    } else {
      _showSnackbar('Purchase Syccessful!');
      Future.delayed(
          Duration(milliseconds: 500),
          () => Navigator.push(_context,
              MaterialPageRoute(builder: (_context) => VoucherPage(username: widget.username,))));
    }
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.push(_context,
                  MaterialPageRoute(builder: (_context) => VoucherPage(username: widget.username,))),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff446382),
                size: 25,
              )),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10, top: 5),
              child: Image.asset('assets/logo.png'),
            )
          ],
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          // elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 25, bottom: 10, right: 30, left: 30),
                  child: Image.asset(widget.image),
                ),
                Align(
                  child: Text(
                    widget.game,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  alignment: Alignment.center,
                ),
                Container(
                    margin: EdgeInsets.only(left: 25, top: 20),
                    child: Text(
                      'Top Up Information:',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 50, top: 18),
                    child: Text(
                      'Quantity :  ' + widget.qty,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 50, top: 18),
                    child: Text(
                      'Price       :  ' + widget.price,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 25, top: 30),
                    child: Text(
                      'User Information:',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 50, top: 18),
                        child: Text(
                          'User ID   :  ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 35, top: 18),
                      child: SizedBox(
                        width: 150,
                        child: TextField(
                          controller: _userId,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              errorText: _error,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1))),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          maxLines: 1,
                        ),
                      ),
                    ))
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff446382),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'PURCHASE',
                            style: TextStyle(fontSize: 16),
                          )),
                      onPressed: () => _validate(),
                    ))
              ],
            )),
          ],
        ));
  }
}
