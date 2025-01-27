import 'package:flutter/material.dart';
import 'package:oracle_solutions_project/Constants.dart';

class IntroductionSection extends StatefulWidget {
  const IntroductionSection({super.key});

  @override
  State<IntroductionSection> createState() => _IntroductionSectionState();
}

class _IntroductionSectionState extends State<IntroductionSection> {
  bool _isWeb = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _isWeb = isWeb(context);

    return Container(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset(
              "assets/images/image5.png",
              width: _isWeb ? null : screenWidth - 40,
              height: _isWeb ? screenHeight * 0.9 : screenHeight * 0.6,
            ),
            Container(
              padding: EdgeInsets.only(left: _isWeb ? screenWidth * 0.25 : 0),
              width: _isWeb ? screenWidth - 40 : screenWidth - 32,
              height: screenHeight,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.enrd,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Think",
                        style: thickStyle.copyWith(fontSize: _isWeb ? 64 : 44),
                      ),
                      Text(
                        " Bigger",
                        style: boldStyle.copyWith(fontSize: _isWeb ? 84 : 64),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sell",
                        style: thickStyle.copyWith(fontSize: _isWeb ? 64 : 44),
                      ),
                      Text(
                        " Smarter",
                        style: boldStyle.copyWith(fontSize: _isWeb ? 84 : 64),
                      )
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: _isWeb ? screenWidth * 0.22 : 0),
                    width: _isWeb ? screenWidth : screenWidth - 32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Unlock Your E-Commerce Potential with Oracle Solutions',
                          style: headingText,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'At Oracle Solutions, we specialize in delivering top-tier e-commerce services designed to help your business succeed in the digital world. With years of experience and a team of skilled professionals, we provide end-to-end solutions that drive growth, increase efficiency, and improve your online sales performance.',
                          style: normalText,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ],
      ),
    );

    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text(
    //       'Unlock Your E-Commerce Potential with Oracle Solutions',
    //       style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    //     ),
    //     SizedBox(height: 16.0),
    //     Text(
    //       'At Oracle Solutions, we specialize in delivering \ntop-tier e-commerce services designed to help your business succeed in the digital world.\n With years of experience and a team of skilled professionals, we provide end-to-end solutions that drive growth,\n increase efficiency, and improve your online sales performance.',
    //       style: TextStyle(fontSize: 16.0),
    //     ),
    //   ],
    // );
  }
}
