import 'package:flutter/material.dart';
import 'package:oracle_solutions_project/main_src_file/service_area.dart';

import '../Constants.dart';
import 'contact_area.dart';
import 'expertise_area.dart';
import 'introduction_area.dart';
import 'main_page_header.dart';

class OracleSolutionsPage extends StatefulWidget {
  const OracleSolutionsPage({super.key});

  @override
  OracleSolutionsPageState createState() => OracleSolutionsPageState();
}

class OracleSolutionsPageState extends State<OracleSolutionsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  final GlobalKey _introKey = GlobalKey();
  final GlobalKey _whyChooseUsKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _scrollToSection(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(int index) {
    final sectionKeys = [
      _introKey,
      _servicesKey,
      _whyChooseUsKey,
      _contactKey,
    ];

    final targetContext = sectionKeys[index].currentContext;
    if (targetContext != null) {
      Scrollable.ensureVisible(
        targetContext,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  Widget _buildSection(GlobalKey key, Widget content) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: content,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MainPageHeader(),
        centerTitle: true,
        bottom: TabBar(
          unselectedLabelStyle: normalText,
          labelStyle:
              headingText.copyWith(fontSize: 20, color: ColorTheme.navBarColor),
          controller: _tabController,
          tabs: const [
            Tab(text: 'Introduction'),
            Tab(text: 'Services'),
            Tab(text: 'Why Choose Us'),
            Tab(text: 'Contact'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(_introKey, const IntroductionSection()),
            _buildSection(_servicesKey, const ServiceSection()),
            _buildSection(_whyChooseUsKey, const ExpertiseSection()),
            _buildSection(_contactKey, const ContactSection()),
          ],
        ),
      ),
    );
  }
}
