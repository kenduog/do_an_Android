import 'package:flutter/material.dart';
import 'package:saigon_store/screens/history_cart/history_cart_screen.dart';
import 'setting_menu.dart';
import 'setting_pic.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../profile/profile_screen.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Thay dổi mật khẩu",
            icon: "assets/icons/Settings.svg",
            press: () => {
              
            },
          ),
           ProfileMenu(
            text: "Thay đổi thông tin nhận hàng",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Phương thức thanh toán ",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Quay lại",
            icon: "assets/icons/Log out.svg",
            press: () {
               Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
