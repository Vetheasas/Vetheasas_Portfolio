import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'mobile_drawer_item.dart';

class MobilePageDrawer extends StatefulWidget {
  late PageController pageController;
  late VoidCallback closingDrawer;

  MobilePageDrawer({required this.pageController, required this.closingDrawer});

  @override
  State<MobilePageDrawer> createState() => _MobilePageDrawerState();
}

class _MobilePageDrawerState extends State<MobilePageDrawer> {
  void animateToSpecificPage(int specificPage) {
    widget.pageController.animateToPage(specificPage,
        curve: Curves.ease, duration: Duration(seconds: 1));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF121631),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile_pic.png'),
                        fit: BoxFit.scaleDown),
                  ),
                ),
              )),
          Expanded(
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
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text(
                    'Flutter Developer',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                DrawerItem(
                  title: 'Home',
                  icon: Icons.home,
                  jumpToPage: () {
                    animateToSpecificPage(0);
                  },
                  pageNumber: 0,
                ),
                DrawerItem(
                  title: 'About',
                  icon: Icons.person,
                  jumpToPage: () {
                    animateToSpecificPage(1);
                  },
                  pageNumber: 1,
                ),
                DrawerItem(
                  title: 'Skills',
                  icon: Icons.computer,
                  jumpToPage: () {
                    animateToSpecificPage(2);
                  },
                  pageNumber: 2,
                ),
                DrawerItem(
                  title: 'Education',
                  icon: Icons.book,
                  jumpToPage: () {
                    animateToSpecificPage(3);
                  },
                  pageNumber: 3,
                ),
                DrawerItem(
                  title: 'Works',
                  icon: Icons.work,
                  jumpToPage: () {
                    animateToSpecificPage(4);
                  },
                  pageNumber: 4,
                ),
                DrawerItem(
                  title: 'Contact',
                  icon: Icons.phone,
                  jumpToPage: () {
                    animateToSpecificPage(5);
                  },
                  pageNumber: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
