import 'package:flutter/material.dart';

import 'components/body.dart';

class Reset_Password extends StatelessWidget {
  static String routeName = "/reset_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đổi mật khẩu"),
      ),
      body: Body(),
    );
  }
}
