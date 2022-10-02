import 'package:flutter/material.dart';

import '../../components/drawer/desktop_drawer/desktop_page_drawer.dart';
import '../../pages/about/desktop_about_page/desktop_about_page.dart';
import '../../pages/contact/desktop_contact_page.dart';
import '../../pages/education/desktop_education_page.dart';
import '../../pages/home/desktop_home_page.dart';
import '../../pages/skills/desktop_skills_page.dart';
import '../../pages/works/desktop_works_page.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';
import 'package:provider/provider.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  PageController _desktopPageController = PageController();

  double currentPage = 0;

  @override
  void initState() {
    _desktopPageController.addListener(() {
      setState(() {
        currentPage = _desktopPageController.page!;

        Provider.of<DataProvider>(context, listen: false)
            .updateCurrentPage(currentPage);
        // print('currentPage is ${currentPage}');
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFF0e1d3b),
      child: Row(
        children: [
          DesktopPageDrawer(
            pageController: _desktopPageController,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width - 304,
            child: PageView(
              pageSnapping: false,
              physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              scrollBehavior: ScrollBehavior(
                  androidOverscrollIndicator: AndroidOverscrollIndicator.glow),
              scrollDirection: Axis.vertical,
              controller: _desktopPageController,
              children: [
                DesktopHomePage(),
                DesktopAboutPage(),
                DesktopSkillsPage(),
                DesktopEducationPage(),
                DesktopWorksPage(),
                DesktopContactPage(),
              ],
            ), //TODO: create all pages template tomorrow and complete contact
          ),
        ],
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
