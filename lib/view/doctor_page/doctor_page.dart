import 'package:flutter/material.dart';
import 'package:food_order_ui/configuration/food.dart';
import 'package:food_order_ui/configuration/food_list.dart';
import 'package:food_order_ui/view/favorite_page/widgets/favorite_cart_icon.dart';
import 'package:food_order_ui/view/favorite_page/widgets/favorite_icon.dart';
import 'package:food_order_ui/view/favorite_page/widgets/favorite_image.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:food_order_ui/view/doctor_info/doctor_info.dart';

class SeeAllDoctorsScreen extends StatefulWidget {
  const SeeAllDoctorsScreen({Key? key}) : super(key: key);

  @override
  _SeeAllDoctorsScreenState createState() => _SeeAllDoctorsScreenState();
}

class _SeeAllDoctorsScreenState extends State<SeeAllDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Top Doctors",
          style: TextStyle(
            color: Color(0xFF2FC9FE),
            fontWeight: FontWeight.bold, // Set the fontWeight to bold
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // Navigate to another page here
              // For example:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DoctorInfoPage()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ), // Adjust horizontal padding as needed
              child: Container(
                width: 327,
                height: 116,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 92,
                      height: 92,
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Image.asset(
                        'assets/main/doc.png', // Replace with your image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr.Toph Kamatayan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Cardiologists | BMC Hospital',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.symmetric(
          //       horizontal: 20), // Adjust horizontal padding as needed
          //   child: Container(
          //     width: 327,
          //     height: 116,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color: Colors.grey[200],
          //     ),
          //     child: Row(
          //       children: [
          //         Container(
          //           width: 92,
          //           height: 92,
          //           margin: EdgeInsets.all(12),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: Colors.blue,
          //           ),
          //           child: Image.asset(
          //             'assets/main/doc.png', // Replace with your image URL
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         Expanded(
          //           child: Container(
          //             padding:
          //                 EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Dr.Toph Kamatayan',
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 SizedBox(height: 8),
          //                 Text(
          //                   'Cardiologists | BMC Hospital',
          //                   style: TextStyle(
          //                     fontSize: 12,
          //                     color: Colors.grey,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          // 2nd
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20), // Adjust horizontal padding as needed
            child: Container(
              width: 327,
              height: 116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Container(
                    width: 92,
                    height: 92,
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/main/real.png', // Replace with your image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Berlin Elizerd',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Pediatrics | BMC Hospital',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //3rd

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20), // Adjust horizontal padding as needed
            child: Container(
              width: 327,
              height: 116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Container(
                    width: 92,
                    height: 92,
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/main/davids.jpeg', // Replace with your image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.David Salon',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Gynecologist | BMC Hospital',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //4th
          Container(
            width: 327,
            height: 43,
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
              color: Color(0xFF42B9FE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text(
                'View Location',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
