import 'package:flutter/material.dart';

import 'components/body.dart';

class ChangeProfileSuccessScreen extends StatelessWidget {
  static String routeName = "/change_profile_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Thay đổi thông tin thành công"),
      ),
      body: Body(),
    );
  }
}
