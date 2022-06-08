import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoucherDetailPage extends StatefulWidget {
  final String game;
  final String image;
  final String qty;
  final String price;

  VoucherDetailPage(
      {Key? key,
      required this.game,
      required this.image,
      required this.qty,
      required this.price})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => VoucherDetailPageState();
}

class VoucherDetailPageState extends State<VoucherDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Text(widget.game),
        Text(widget.qty),
        Text(widget.price),
        Image.asset(widget.image)
      ],),
    );
  }
}
