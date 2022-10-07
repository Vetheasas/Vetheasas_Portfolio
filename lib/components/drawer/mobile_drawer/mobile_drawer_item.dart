import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DrawerItem extends StatefulWidget {
  late String title;
  late IconData icon;
  late VoidCallback jumpToPage;
  late double pageNumber;
  DrawerItem(
      {required this.title,
      required this.icon,
      required this.pageNumber,
      required this.jumpToPage});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

//TODO: add mobile version => slidable drawer
//TODO: Use PageView to do this
class _DrawerItemState extends State<DrawerItem> {
  Color indicateWhichPage() {
    print('Current page is ${widget.pageNumber}');
    print(
        'Provider page is ${Provider.of<DataProvider>(context, listen: true).getCurrentPage}');
    if (widget.pageNumber <=
            Provider.of<DataProvider>(context, listen: true).getCurrentPage &&
        widget.pageNumber + 1 >
            Provider.of<DataProvider>(context, listen: true).getCurrentPage) {
      print('done');
      return Color(0xFF142549);
    }
    return Color(0xFF121631);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: indicateWhichPage(),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(),
        onPressed: () {
          widget.jumpToPage();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 35),
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                child: Center(
                  child: AutoSizeText(
                    widget.title,
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white), //TODO: find a thinner OpenSans
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
