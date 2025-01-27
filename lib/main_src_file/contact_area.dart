import 'package:flutter/material.dart';

import '../Constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Widget bulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '• ',
          style: TextStyle(fontSize: 16.0),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }

  Widget contactInfo(String label, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: normalText,
          children: [
            TextSpan(
              text: '$label ',
              style: normalText,
            ),
            TextSpan(text: info),
          ],
        ),
      ),
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
            'Contact',
            style: headingText,
          ),
          const SizedBox(height: 8.0),
          contactInfo('Email Address:', 'oraclesolutions02@gmail.com'),
          contactInfo('Contact Number:', '+91 93408 00455'),
          contactInfo(
            'Address:',
            '604, Scheme 134, Vijay Nagar, Indore, Madhya Pradesh 452010, India',
          ),
        ],
      ),
    );
  }
}
