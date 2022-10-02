import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/components/drawer/desktop_drawer/desktop_page_drawer.dart';
import 'package:vetheasas_porfolio/components/drawer/mobile_drawer/mobile_page_drawer.dart';
import 'package:vetheasas_porfolio/pages/about/desktop_about_page/desktop_about_page.dart';
import 'package:vetheasas_porfolio/pages/about/mobile_about_page/mobile_about_page.dart';
import 'package:vetheasas_porfolio/pages/contact/desktop_contact_page.dart';
import 'package:vetheasas_porfolio/pages/education/desktop_education_page.dart';
import 'package:vetheasas_porfolio/pages/home/desktop_home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vetheasas_porfolio/pages/home/mobile_home_page.dart';
import 'package:vetheasas_porfolio/pages/home/tablet_home_page.dart';
import 'package:vetheasas_porfolio/pages/skills/desktop_skills_page.dart';
import 'package:vetheasas_porfolio/pages/works/desktop_works_page.dart';

import '../../layout/desktop_layout/desktop_layout.dart';
import '../../layout/mobile_layout/mobile_layout.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//TODO: Implement PageView for other pages
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: Scaffold(
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
          // drawer: MobilePageDrawer(),
          body: Container(
            color: Color(0xFF0e1d3b),
            child: Row(
              children: [TabletHomePage()],
            ),
          )
          // This trailing comma makes auto-formatting nicer for build methods.
          ),
      desktop: DesktopLayout(),
      mobile: MobileLayout(),
    );
  }
}
