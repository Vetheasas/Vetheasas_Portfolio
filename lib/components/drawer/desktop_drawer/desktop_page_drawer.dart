import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/components/drawer/desktop_drawer/desktop_drawer_item.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';
import 'package:provider/provider.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DesktopPageDrawer extends StatefulWidget {
  late PageController pageController;
  DesktopPageDrawer({required this.pageController});

  @override
  State<DesktopPageDrawer> createState() => _DesktopPageDrawerState();
}

class _DesktopPageDrawerState extends State<DesktopPageDrawer> {
  void NavigatePageController(int pageNumber) {
    widget.pageController.animateToPage(pageNumber,
        curve: Curves.ease, duration: Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF121631),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile_pic.png'),
                          fit: BoxFit.scaleDown),
                    ),
                  ),
                )
                // SizedBox(
                //   width: 200,
                //   height: 200,
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                //
                //     // radius: 95,
                //   ),
                // ),
                ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    AutoSizeText(
                      'You Vetheasas',
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 30,
                          fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: AutoSizeText(
                        'Flutter Developer',
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    DrawerItem(
                      title: 'Home',
                      pageNumber: 0,
                      jumpToPage: () {
                        NavigatePageController(0);
                      },
                      color: Provider.of<DataProvider>(context, listen: true)
                          .getColor(0),
                    ),
                    DrawerItem(
                      title: 'About',
                      pageNumber: 1,
                      jumpToPage: () {
                        NavigatePageController(1);
                      },
                      color: Provider.of<DataProvider>(context, listen: true)
                          .getColor(1),
                    ),
                    DrawerItem(
                      title: 'Skills',
                      pageNumber: 2,
                      jumpToPage: () {
                        NavigatePageController(2);
                      },
                      color: Provider.of<DataProvider>(context, listen: true)
                          .getColor(2),
                    ),
                    DrawerItem(
                      title: 'Education',
                      pageNumber: 3,
                      jumpToPage: () {
                        NavigatePageController(3);
                      },
                      color: Provider.of<DataProvider>(context, listen: true)
                          .getColor(3),
                    ),
                    DrawerItem(
                      title: 'Works',
                      pageNumber: 4,
                      jumpToPage: () {
                        NavigatePageController(4);
                      },
                      color: Provider.of<DataProvider>(context, listen: true)
                          .getColor(4),
                    ),
                    DrawerItem(
                      title: 'Contact',
                      pageNumber: 5,
                      jumpToPage: () {
                        NavigatePageController(5);
                      },
                      color: Provider.of<DataProvider>(context, listen: true)
                          .getColor(5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
