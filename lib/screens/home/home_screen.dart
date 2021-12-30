import 'package:flutter/material.dart';
import 'package:saigon_store/components/coustom_bottom_nav_bar.dart';
import 'package:saigon_store/enums.dart';
import 'components/search_field.dart';
import 'components/icon_btn_with_counter.dart';
import '../cart/cart_screen.dart';
import '../favourite/favourite_screen.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 10),
              child: SearchField(),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5, top: 10),
              child: IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                press: () => Navigator.pushNamed(context, CartScreen.routeName),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: IconBtnWithCounter(
                svgSrc: "assets/icons/Bell.svg",
                numOfitem: 3,
                press: () {},
              ),
            )
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
//Color(0xFFFF7643)
