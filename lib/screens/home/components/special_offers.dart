import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

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
                category: "IPhone 13",
                numOfPrices: '23.490.000đ',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/products/dt_2.png",
                category: "OPPO Reno6 Z ",
                numOfPrices: '9.490.000đ',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/products/dt_3.png",
                category: "Galaxy S21+",
                numOfPrices: '16.990.000đ',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/products/dt_4.png",
                category: "Xiaomi 11 Lite",
                numOfPrices: '9.490.000đ',
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
    required this.category,
    required this.image,
    required this.numOfPrices,
    required this.press,
  }) : super(key: key);

  final String category, image;
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
          height: getProportionateScreenWidth(255),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
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
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 60,top: 220,right: 20,bottom: 10),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.black,),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfPrices",style: TextStyle(fontSize: getProportionateScreenWidth(15),fontWeight: FontWeight.bold,color: Colors.red))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
