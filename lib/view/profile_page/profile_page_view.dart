import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:food_order_ui/view/profile_page/widgets/top_custom_shape.dart';
import 'package:food_order_ui/view/profile_page/widgets/user_sections.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  _ProfilePageViewState createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // Set the fontWeight to bold
          ),
        ),
        backgroundColor: Color(0xFF2FC9FE),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopCustomShape(),
          SizedBox(
            height: SizeConfig.screenHeight! / 34.15,
          ),

          /// 20.0
          UserSection(
              icon_name: Icons.account_circle, section_text: "My information"),
          UserSection(
              icon_name: Icons.location_city,
              section_text: "Address information"),
          UserSection(
              icon_name: Icons.credit_card, section_text: "Health Records"),
          UserSection(
              icon_name: Icons.history_rounded,
              section_text: "Appointment History"),
          UserSection(
              icon_name: Icons.app_settings_alt_rounded,
              section_text: "Settings"),
        ],
      ),
    );
  }
}
