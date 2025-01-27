import 'package:flutter/material.dart';

import '../Constants.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection({super.key});

  Widget bulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• ',
          style: normalText,
        ),
        Expanded(
          child: Text(
            text,
            style: normalText,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Why Choose Oracle Solutions for Your E-Commerce Needs?',
            style: headingText,
          ),
          Image.asset(
            "assets/images/image4.jpg",
            scale: 2,
          ),
          const SizedBox(height: 8.0),
          bulletPoint('Cost-Effective Strategies'),
          bulletPoint('Reliable & Responsive Support'),
          bulletPoint('Proactive E-Commerce Solutions'),
        ],
      ),
    );
  }
}
