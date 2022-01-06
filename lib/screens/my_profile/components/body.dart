import 'package:flutter/material.dart';
import 'package:saigon_store/components/no_account_text.dart';
import 'package:saigon_store/components/socal_card.dart';
import '../../../size_config.dart';
import 'my_profile_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text('Thông tin của tôi',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Image.asset(
                  'assets/images/Profile Image.png',
                  width: 350,
                  height: 130,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                ProfileForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
