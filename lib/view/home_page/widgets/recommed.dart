import 'package:flutter/material.dart';
import 'package:food_order_ui/configuration/food.dart';
import 'package:food_order_ui/configuration/food_list.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_order_ui/view/splash_screen.dart';

import 'package:food_order_ui/view/hospital_page/hospital_page.dart';

class RecommedFoods extends StatefulWidget {
  const RecommedFoods({Key? key}) : super(key: key);

  @override
  _RecommedFoodsState createState() => _RecommedFoodsState();
}

class _RecommedFoodsState extends State<RecommedFoods> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Food>>(
      future: bringTheFoods(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var foodList = snapshot.data;
          return SizedBox(
            height: SizeConfig.screenHeight! / 2.58,

            /// 265.0
            child: CarouselSlider.builder(
              itemCount: foodList!.length,
              itemBuilder: (context, index, realIndex) {
                var food = foodList[index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to the SeeAllDoctorsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HospitalInfoScreens()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                      SizeConfig.screenWidth! / 34.25,
                      SizeConfig.screenHeight! / 170.75,
                      SizeConfig.screenWidth! / 41.1,
                      SizeConfig.screenHeight! / 170.75,
                    ),
                    height: SizeConfig.screenHeight! / 2.73,
                    width: SizeConfig.screenWidth! / 2.055,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 6),
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.3),
                          )
                        ]),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("${food.foodImageName}"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          left: SizeConfig.screenWidth! / 34.25,
                          bottom: SizeConfig.screenHeight! / 45.54,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${food.foodName}",
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenHeight! / 36.15,
                                      color: Colors.white)),
                              Text("${food.foodCategory}",
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenHeight! / 48.79,
                                      color: Colors.white)),
                              // Text("\$${food.foodPrice}",
                              // style: TextStyle(
                              //     fontSize:
                              //         SizeConfig.screenHeight! / 37.95,
                              //     color: Colors.white))
                            ],
                          ),
                        ),
                        Positioned(
                            top: SizeConfig.screenHeight! / 68.3,
                            right: SizeConfig.screenWidth! / 41.1,
                            child: Icon(Icons.favorite, color: Colors.white))
                      ],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: SizeConfig.screenHeight! / 2.58,
                aspectRatio: 16 / 9,
                viewportFraction: 0.6,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
        } else {
          return Center();
        }
      },
    );
  }
}
