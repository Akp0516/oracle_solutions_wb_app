import 'package:flutter/material.dart';

import '../Constants.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  Widget serviceCard(String title, String description) {
    return HoverExpandableTile(
      title: title,
      details: description,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      color: ColorTheme.bgColor,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Our Services',
                  style: headingText,
                ),
                const SizedBox(height: 8.0),
                Wrap(
                  spacing: 16.0, // Horizontal space between cards
                  runSpacing: 16.0, // Vertical space between rows of cards
                  alignment: WrapAlignment.center, // Aligns cards in the center
                  children: [
                    serviceCard(
                      'Ecommerce Account Management',
                      'Comprehensive services for seller accounts, including optimization, inventory, and performance monitoring.\n\n- Account Setup & Optimization\n- Inventory & Order Management\n- Performance Monitoring\n- Customer Service & Feedback Management\n- Ad Campaign Management\n\nOur dedicated team ensures your accounts operate seamlessly while you focus on growing your business.',
                    ),
                    serviceCard(
                      'Social Media Marketing Services',
                      'Strategies for building brand awareness and driving sales through social platforms.\n\n- Content Creation and Curation\n- Community Management\n- Paid Advertising\n- Daily Posting, Reels, Stories, and Images\n\nWe specialize in creating impactful campaigns tailored to your audience for maximum engagement.',
                    ),
                    serviceCard(
                      'E-Commerce Platform Setup',
                      'Setup and integration of online stores tailored to your goals.\n\n- Platform Setup & Integration\n- Product Listing Management\n- Market Research & Strategy Development\n- Ongoing Maintenance & Support\n- Custom E-Commerce Development\n\nLet us handle the technical complexities so you can focus on delivering exceptional shopping experiences.',
                    ),
                    serviceCard(
                      'Performance Analytics & Reporting',
                      'Data-driven insights to monitor and enhance your online business.\n\n- Detailed Sales Reports\n- Customer Behavior Analysis\n- Market Trend Insights\n\nWe provide actionable recommendations to help you make informed business decisions.',
                    ),
                    serviceCard(
                      'Custom Development Solutions',
                      'Tailored technology solutions to meet unique business challenges.\n\n- Bespoke Web Development\n- Mobile App Integration\n- API Development and Automation\n\nEmpower your business with cutting-edge tools and platforms designed just for you.',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HoverExpandableTile extends StatefulWidget {
  final String title;
  final String details;

  const HoverExpandableTile({
    required this.title,
    required this.details,
    Key? key,
  }) : super(key: key);

  @override
  State<HoverExpandableTile> createState() => _HoverExpandableTileState();
}

class _HoverExpandableTileState extends State<HoverExpandableTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.blue[50] : Colors.white,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (_isHovered)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  widget.details,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
