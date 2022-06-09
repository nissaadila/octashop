import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';
import 'package:octashop/pages/voucher.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var _usernameCon = TextEditingController();
  var _passwordCon = TextEditingController();
  var _errorMsg = "Error";
  var _context = null;
  var _isVisible = false;

  void _validateUser() {
    if (_usernameCon.text == "") {
      setState(() {
        _errorMsg = "Username can't be empty.";
        _isVisible = true;
      });
    } else if (_passwordCon.text == "") {
      setState(() {
        _errorMsg = "Password can't be empty.";
        _isVisible = true;
      });
    } else if (_usernameCon.text.length < 7) {
      setState(() {
        _errorMsg = "Username must be at least 7 characters.";
        _isVisible = true;
      });
    } else if (_passwordCon.text.length < 4 || _passwordCon.text.length > 16) {
      setState(() {
        _errorMsg = "Password must be between 4 and 16 characters.";
        _isVisible = true;
      });
    } else {
      _isVisible = false;
      Navigator.push(
          _context,
          MaterialPageRoute(
              builder: (context) => HomePage(username: _usernameCon.text)));
      // TODO: arahin harusnya ke HOME PAGE
    }
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        Container(
            child: Image.asset("assets/logo.png", fit: BoxFit.contain),
            margin: EdgeInsets.all(20)),
        Container(
            child: TextField(
              controller: _usernameCon,
              decoration: InputDecoration(hintText: "Username"),
            ),
            margin: EdgeInsets.all(20)),
        Container(
          child: TextField(
            controller: _passwordCon,
            decoration: InputDecoration(hintText: "Password"),
            obscureText: true,
          ),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
        ),
        Visibility(
            visible: _isVisible,
            child: Container(
                margin: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
                child: Text(
                  _errorMsg,
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ))),
        ElevatedButton(
          onPressed: _validateUser,
          child: Text("LOGIN"),
          style: ElevatedButton.styleFrom(
              primary: Color(0xffEFBA9B),
              textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              minimumSize: Size(180, 50)),
        )
      ],
    ));
  }
}
