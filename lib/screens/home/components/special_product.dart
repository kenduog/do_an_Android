import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import 'section_title.dart';
import '../../../models/Product.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Điện thoại phổ biến: ",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/products/dt_1.png",
                product: "IPhone 13",
                numOfPrices: '23.490.000đ',
                iconheart: "assets/icons/Heart Icon_2.svg",
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/products/dt_2.png",
                product: "OPPO Reno6 Z ",
                numOfPrices: '9.490.000đ',
                iconheart: "assets/icons/Heart Icon_2.svg",
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/products/dt_3.png",
                product: "Galaxy S21+",
                numOfPrices: '16.990.000đ',
                iconheart: "assets/icons/Heart Icon_2.svg",
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/products/dt_4.png",
                product: "Xiaomi 11 Lite",
                numOfPrices: '9.490.000đ',
                iconheart: "assets/icons/Heart Icon_2.svg",
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}


class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.product,
    required this.image,
    required this.iconheart,
    required this.numOfPrices,
    required this.press,
  }) : super(key: key);

  final String product, image, iconheart;
  final String numOfPrices;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenWidth(285),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Column(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Text(
                    "$product\n",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.bold,
                      ),
                    ),  
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(padding: EdgeInsets.only(left: 62,bottom: 20),
                child: Text(
                  "$numOfPrices",style: TextStyle(fontSize: getProportionateScreenWidth(15),fontWeight: FontWeight.bold,color: Colors.red)),
                    ), 
                InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        iconheart,
                        color:Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
