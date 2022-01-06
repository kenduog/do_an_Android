import 'package:flutter/material.dart';
import 'package:saigon_store/models/Cart.dart';
import '../history_cart/components/back.dart';
import 'components/body.dart';

class History_Cart extends StatelessWidget {
  static String routeName = "/history_cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: Back(),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Lịch sử mua hàng",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} sản phẩm",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
