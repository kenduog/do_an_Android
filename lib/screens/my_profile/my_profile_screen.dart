import 'package:flutter/material.dart';

import 'components/body.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  static String routeName = "/myprofile";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin của tôi"),
      ),
      body: Body(),
    );
  }
}
