import 'package:flutter/material.dart';
import 'package:saigon_store/components/default_button.dart';
import 'package:saigon_store/screens/profile/profile_screen.dart';
import 'package:saigon_store/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Thay đổi thành công",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Tiếp tục",
            press: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, ProfileScreen.routeName, (_) => false);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
