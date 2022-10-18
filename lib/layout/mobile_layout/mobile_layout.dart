import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vetheasas_porfolio/pages/education/mobile_education_page/mobile_education_page.dart';
import 'package:vetheasas_porfolio/pages/home/home_view.dart';
import 'package:vetheasas_porfolio/pages/skills/mobile_skills_page/mobile_skills_page.dart';
import 'package:vetheasas_porfolio/pages/works/mobile_works_page/mobile_works_page.dart';

import '../../components/drawer/mobile_drawer/mobile_page_drawer.dart';
import '../../data_provider/data_provider.dart';
import '../../pages/about/mobile_about_page/mobile_about_page.dart';
import '../../pages/contact/mobile_contact_page/mobile_contact_page.dart';
import '../../pages/home/mobile_home_page.dart';

class MobileLayout extends StatefulWidget {
  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  PageController _pageController = PageController(keepPage: true);
  double currentPage = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;

        Provider.of<DataProvider>(context, listen: false)
            .updateCurrentPage(currentPage);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0e1d3b),
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
                color: Colors.white,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu));
          }),
        ),
        drawer: MobilePageDrawer(
          pageController: _pageController,
          closingDrawer: () {},
        ),
        body: Container(
          color: Color(0xFF0e1d3b),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              pageSnapping: true,
              physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              scrollBehavior: ScrollBehavior(
                  androidOverscrollIndicator: AndroidOverscrollIndicator.glow),
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: [
                MobileHomePage(),
                MobileAboutPage(),
                MobileSkillsPage(),
                MobileEducationPage(),
                MobileWorksPage(),
                MobileContactPage()
              ],
            ), //TODO: create all pages template tomorrow and complete contact
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
