import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/components/drawer/desktop_drawer/desktop_drawer_item.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';
import 'package:provider/provider.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
            child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/profile_pic.jpg'),
              radius: 95,
            ),
          ),
          Text(
            'You Vetheasas',
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
          DrawerItem(
            title: 'Home',
            pageNumber: 0,
            jumpToPage: () {
              NavigatePageController(0);
            },
            color: Provider.of<DataProvider>(context, listen: true).getColor(0),
          ),
          DrawerItem(
            title: 'About',
            pageNumber: 1,
            jumpToPage: () {
              NavigatePageController(1);
            },
            color: Provider.of<DataProvider>(context, listen: true).getColor(1),
          ),
          DrawerItem(
            title: 'Skills',
            pageNumber: 2,
            jumpToPage: () {
              NavigatePageController(2);
            },
            color: Provider.of<DataProvider>(context, listen: true).getColor(2),
          ),
          DrawerItem(
            title: 'Education',
            pageNumber: 3,
            jumpToPage: () {
              NavigatePageController(3);
            },
            color: Provider.of<DataProvider>(context, listen: true).getColor(3),
          ),
          DrawerItem(
            title: 'Works',
            pageNumber: 4,
            jumpToPage: () {
              NavigatePageController(4);
            },
            color: Provider.of<DataProvider>(context, listen: true).getColor(4),
          ),
          DrawerItem(
            title: 'Contact',
            pageNumber: 5,
            jumpToPage: () {
              NavigatePageController(5);
            },
            color: Provider.of<DataProvider>(context, listen: true).getColor(5),
          ),
        ],
      ),
    );
  }
}
