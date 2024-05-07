import 'package:flutter/material.dart';
import 'package:food_order_ui/configuration/food.dart';
import 'package:food_order_ui/configuration/food_list.dart';
import 'package:food_order_ui/view/favorite_page/widgets/favorite_cart_icon.dart';
import 'package:food_order_ui/view/favorite_page/widgets/favorite_icon.dart';
import 'package:food_order_ui/view/favorite_page/widgets/favorite_image.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';

import 'package:food_order_ui/view/doctor_page/doctor_page.dart';

class FavoritePageView extends StatefulWidget {
  const FavoritePageView({Key? key}) : super(key: key);

  @override
  _FavoritePageViewState createState() => _FavoritePageViewState();
}

class _FavoritePageViewState extends State<FavoritePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Save Locations",
          style: TextStyle(
            color: Color(0xFF2FC9FE),
            fontWeight: FontWeight.bold, // Set the fontWeight to bold
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),

      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 310,
      //       height: 177,
      //       //margin: EdgeInsets.only(left: 2),
      //       decoration: BoxDecoration(
      //         borderRadius:
      //             BorderRadius.circular(20), // Adjust border radius as needed
      //       ), // Adjust left margin as needed
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(
      //             20), // Same border radius as the container
      //         child: Image.asset(
      //           'assets/main/bmc.png', // Replace with your image URL
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     // Container(
      //     //   width: 212,
      //     //   height: 92,
      //     //   margin:
      //     //       EdgeInsets.fromLTRB(73, 0, 0, 0), // Adjust margins as needed
      //     //   child: Image.asset(
      //     //     'assets/main/Containt.png', // Replace with your second image URL
      //     //     fit: BoxFit.cover,
      //     //   ),
      //     // ),
      //     //
      //     SizedBox(height: 20), // Add space between the image and text
      //     Padding(
      //       padding: EdgeInsets.only(left: 23), // Adjust left padding as needed
      //       child: Column(
      //         crossAxisAlignment:
      //             CrossAxisAlignment.start, // Align text to the start (left)
      //         children: [
      //           Text(
      //             'About',
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           SizedBox(height: 10), // Add space between title and description
      //           Text(
      //             'The Bicol Medical Center is a tertiary level government hospital in the Philippines with an authorized bed capacity of one thousand. It is located along BMC Road, Concepcion Pequeña, Naga, Camarines Sur.',
      //             textAlign: TextAlign.left, // Align text to the left
      //           ),
      //         ],
      //       ),
      //     ),

      //     SizedBox(
      //         height:
      //             20), // Add space between the previous text and the new section
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //           horizontal: 20), // Adjust horizontal padding as needed
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment
      //             .spaceBetween, // Aligns children to the start and end of the row
      //         children: [
      //           Text(
      //             'Top Doctors',
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           GestureDetector(
      //             onTap: () {
      //               // Navigate to the SeeAllDoctorsScreen
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => SeeAllDoctorsScreen()),
      //               );
      //             },
      //             child: Text(
      //               'See All',
      //               style: TextStyle(
      //                 color: Colors.blue,
      //                 decoration: TextDecoration.underline,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),

      //     SizedBox(
      //         height:
      //             20), // Add space between the previous text and the new section
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //           horizontal: 20), // Adjust horizontal padding as needed
      //       child: Container(
      //         width: 327,
      //         height: 116,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.grey[200],
      //         ),
      //         child: Row(
      //           children: [
      //             Container(
      //               width: 92,
      //               height: 92,
      //               margin: EdgeInsets.all(12),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Colors.blue,
      //               ),
      //               child: Image.asset(
      //                 'assets/main/doc.png', // Replace with your image URL
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 padding:
      //                     EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Dr.Toph Kamatayan',
      //                       style: TextStyle(
      //                         fontSize: 16,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                     SizedBox(height: 8),
      //                     Text(
      //                       'Cardiologists | BMC Hospital',
      //                       style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.grey,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      // body: Column(
      //   children: <Widget>[

      //     // Add more containers or other widgets here
      //   ],
      // ),
      // body: Padding(
      //   padding: EdgeInsets.symmetric(
      //       horizontal: SizeConfig.screenWidth! / 20.0,
      //       vertical: SizeConfig.screenHeight! / 136.6),

      //   /// 20.0 - 5.0
      //   child: FutureBuilder<List<Food>>(
      //       future: bringTheFoods(),
      //       builder: (context, snapshot) {
      //         if (snapshot.hasData) {
      //           var foodList = snapshot.data;
      //           return GridView.builder(
      //               itemCount: 3,
      //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 2,
      //                 crossAxisSpacing: 8,
      //                 childAspectRatio: 3.2 / 4,
      //               ),
      //               itemBuilder: (context, index) {
      //                 var food = foodList![index];
      //                 return Stack(
      //                   children: [
      //                     Container(
      //                         height: SizeConfig.screenHeight! / 3.10,

      //                         /// 220.0
      //                         width: SizeConfig.screenWidth! / 2.06,

      //                         /// 200.0
      //                         decoration: BoxDecoration(
      //                             color: Colors.white,
      //                             borderRadius: BorderRadius.circular(30.0),
      //                             boxShadow: [
      //                               BoxShadow(
      //                                 offset: Offset(0, 3),
      //                                 blurRadius: 6,
      //                                 color: Colors.black.withOpacity(0.1),
      //                               )
      //                             ]),
      //                         child: Stack(
      //                           children: [
      //                             FavoriteDetail(
      //                                 food_image_name: food.foodImageName,
      //                                 food_name: food.foodName,
      //                                 food_category: food.foodCategory,
      //                                 food_price: food.foodPrice),
      //                             FavoriteCartIcon(),
      //                             FavoriteIcon(),
      //                           ],
      //                         )),
      //                   ],
      //                 );
      //               });
      //         } else {
      //           return Padding(
      //             padding:
      //                 EdgeInsets.only(top: SizeConfig.screenHeight! / 3.10),

      //             /// 200.0
      //             child: Column(
      //               children: [
      //                 Center(
      //                     child: Icon(
      //                   Icons.favorite,
      //                   color: Colors.black12,
      //                   size: SizeConfig.screenHeight! / 11.39,
      //                 )),

      //                 /// 60.0
      //                 SizedBox(
      //                   height: SizeConfig.screenHeight! / 34.15,
      //                 ),

      //                 /// 20.0
      //                 Center(
      //                     child: Text(
      //                   "Your Favorite Foods",
      //                   style: TextStyle(
      //                       color: Colors.black12,
      //                       fontSize: SizeConfig.screenHeight! / 34.15),
      //                 ))

      //                 /// 20.0
      //               ],
      //             ),
      //           );
      //         }
      //       }),
      // ),
    );
  }
}
