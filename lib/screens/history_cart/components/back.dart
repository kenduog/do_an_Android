import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saigon_store/components/default_button.dart';
import 'package:saigon_store/screens/profile/profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Back extends StatelessWidget {
  const Back({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 100,right: 100,bottom: 25),
    child: DefaultButton(
            text: "Trở về",
            press: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
        }
      ),
    );
  }
}
