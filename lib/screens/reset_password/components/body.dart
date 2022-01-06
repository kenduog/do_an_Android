import 'package:flutter/material.dart';
import 'package:saigon_store/components/socal_card.dart';
import 'package:saigon_store/constants.dart';
import 'package:saigon_store/size_config.dart';

import 'reset_password_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Thay đổi mật khẩu", style: headingStyle),
                Text(
                  "Điền tất cả thông tin của bạn dưới đây",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ResetPassForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.06),

                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
