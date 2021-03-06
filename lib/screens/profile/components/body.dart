import 'package:flutter/material.dart';
import 'package:saigon_store/screens/history_cart/history_cart_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../my_profile/my_profile_screen.dart';
import '../../setting/setting_screen.dart';

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
            text: "Thông tin của tôi",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.pushNamed(context, MyProfileScreen.routeName)
            },
          ),
          ProfileMenu(
            text: "Lịch sử mua hàng",
            icon: "assets/icons/Bell.svg",
            press: () {
              Navigator.pushNamed(context, History_Cart.routeName);
            },
          ),
           ProfileMenu(
            text: "Cài đặt",
            icon: "assets/icons/Settings.svg",
            press: () {
               Navigator.pushNamed(context, SettingScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Trung tâm hỗ trợ",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Đăng xuất",
            icon: "assets/icons/Log out.svg",
            press: () {
               Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
