import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'discount_banner.dart';
import 'popular_product.dart';
import 'special_product.dart';
import 'logo.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Longo(),
            bannerMain(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
