import 'package:flutter/material.dart';

import '../../components/drawer/desktop_drawer/desktop_page_drawer.dart';
import '../../pages/about/desktop_about_page/desktop_about_page.dart';
import '../../pages/contact/desktop_contact_page/desktop_contact_page.dart';
import '../../pages/education/desktop_education_page/desktop_education_page.dart';
import '../../pages/home/desktop_home_page.dart';
import '../../pages/home/home_view.dart';
import '../../pages/skills/desktop_skills_page/desktop_skills_page.dart';
import '../../pages/works/desktop_works_page/desktop_works_page.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';
import 'package:provider/provider.dart';

class DesktopLayout extends StatefulWidget {
  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

//TODO: MAKE TITLE OF EACH PAGE AUTOTEXTSIZE
class _DesktopLayoutState extends State<DesktopLayout> {
  PageController _desktopPageController = PageController(
      keepPage: true,
      viewportFraction: 1.3); //viewportFraction means space for each page

  double currentPage = 0;

  @override
  void initState() {
    setState(() {
      savedPage = 0;
    });

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
    print('savedPage is $savedPage');

    return Scaffold(
        body: Container(
      color: Color(0xFF0e1d3b),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderOnForeground: true,
              elevation: 20,
              color: Color(0xFF141530),
              child: DesktopPageDrawer(
                pageController: _desktopPageController,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width - 304,
              child: PageView(
                onPageChanged: (int page) {
                  print('changedPage is $page');
                  setState(() {
                    savedPage = page;
                  });
                },
                padEnds: true,
                pageSnapping: false,
                physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                scrollBehavior: ScrollBehavior(
                    androidOverscrollIndicator:
                        AndroidOverscrollIndicator.glow),
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
          ),
        ],
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
