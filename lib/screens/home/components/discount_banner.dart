import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import '../../../size_config.dart';

class bannerMain extends StatelessWidget {
  const bannerMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              child: Swiper(
                autoplay: true,
                autoplayDelay: 5000,
                curve: Curves.easeIn,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(listBanner[index]),
                        fit: BoxFit.cover,
                      ));
                },
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
              ),
            ),
          ]
        ),
      ),
              SizedBox(width: getProportionateScreenWidth(20)),
      ],
    );
  }
}
class bannerMainCard extends StatelessWidget {
  const bannerMainCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(320),
          height: getProportionateScreenWidth(180),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}