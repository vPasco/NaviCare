import 'package:flutter/material.dart';
import 'package:food_order_ui/view/cart_page/widgets/bottom_bar.dart';
import 'package:food_order_ui/view/cart_page/widgets/food_list.dart';
import 'package:food_order_ui/view/search_page/widgets/past_search.dart';
import 'package:food_order_ui/view/search_page/widgets/recent_search.dart';
import 'package:food_order_ui/view/search_page/widgets/search_textfield.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

// class _CartViewState extends State<CartView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         title : Text("My Cart", style: TextStyle(color: Colors.black),),
//         elevation: 0,
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: FoodListWidget(),
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//  import 'package:food_order_ui/view/search_page/widgets/past_search.dart';
//  import 'package:food_order_ui/view/search_page/widgets/recent_search.dart';
//  import 'package:food_order_ui/view/search_page/widgets/search_textfield.dart';

// class SearchPageView extends StatefulWidget {
//   const SearchPageView({Key? key}) : super(key: key);

//   @override
//   _SearchPageViewState createState() => _SearchPageViewState();
// }

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Alert SOS",
          style: TextStyle(
            color: Color(0xFF2FC9FE),
            fontWeight: FontWeight.bold, // Set the fontWeight to bold
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      //body: Column(

      // children: [
      //   // SearchTextField(hint_text: "Search"),
      //   // RecentSearch(),
      //   // PastSearch(search_text: "Bicol Medical Center"),
      //   // PastSearch(search_text: "Nearest Clinic in Bagumbayan Sur"),
      // ],
      //

      // ),
      //
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 33, top: 10), // Adjust top padding
                  child: Container(
                    width: 137,
                    alignment: Alignment.center,
                    child: Text(
                      'Are you in emergency?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 10), // Adjust top margin
                    width: 146,
                    height: 80,
                    child: Image.asset(
                      'assets/main/amb.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add spacing between the two containers
            Padding(
              padding: EdgeInsets.only(left: 33), // Add left padding
              child: Container(
                width: 311,
                height: 96,
                child: Text(
                  'Hold the SOS button for 3 seconds to share your live location. It will be shared with the nearest help center and your emergency contacts.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
                height:
                    20), // Add spacing between the text and image containers
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 7), // Add left padding
                child: Container(
                  width: 206,
                  height: 206,
                  child: Image.asset(
                    'assets/main/hot.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing between the image and text
            Padding(
              padding: EdgeInsets.only(left: 33), // Add left padding
              child: Text(
                'Emergency Hot Lines:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing between the text and image
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10), // Add left padding
                child: Container(
                  width: 316,
                  height: 43,
                  child: Image.asset(
                    'assets/main/drop.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Add other widgets here
          ],
        ),
      ),
    );
  }
}
