import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:food_order_ui/view/login_page/widgets/text_title.dart';
import 'package:food_order_ui/view/start_page/widgets/login_button_widget.dart';
import 'package:food_order_ui/view/start_page/widgets/register_button_widget.dart';

class StartPageView extends StatefulWidget {
  const StartPageView({Key? key}) : super(key: key);

  @override
  _StartPageViewState createState() => _StartPageViewState();
}

class _StartPageViewState extends State<StartPageView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: SizeConfig.screenHeight! / 2.732,

            /// 250.0
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/main/newave.png'),
                    fit: BoxFit.fill)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: SizeConfig.screenWidth! / 1.83,

                /// 225.0
                height: SizeConfig.screenHeight! / 5.174,

                /// 132.0
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/main/navicareicon.png",
                        ),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0,
                    SizeConfig.screenHeight! / 68.3,

                    /// 10.0
                    0,
                    SizeConfig.screenHeight! / 11.38

                    /// 60.0
                    ),
                child: Column(children: [
                  Center(
                    child: TextTitle(
                      title: "NaviCare",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth! / 10.28,
                        vertical: SizeConfig.screenHeight! / 90),

                    /// 40.0 - 5.0
                    // child: Center(
                    //   child: Text(
                    //     "Digitally Navigating Health with Care.",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: SizeConfig.screenHeight! / 40,
                    //     ),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                  )
                ]),
              ),
              LoginButton(),
              RegisterButtonWidget()
            ],
          )
        ],
      ),
    );
  }
}
