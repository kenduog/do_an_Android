import 'package:flutter/material.dart';

import 'components/body.dart';

class ChangePasswordSuccessScreen extends StatelessWidget {
  static String routeName = "/change_password_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Thay đổi mật khẩu thành công"),
      ),
      body: Body(),
    );
  }
}
