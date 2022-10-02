import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';

class DrawerItem extends StatefulWidget {
  late String title;
  late double pageNumber;
  late VoidCallback jumpToPage;
  late Color color;
  DrawerItem(
      {required this.title,
      required this.pageNumber,
      required this.color,
      required this.jumpToPage});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

//TODO: add mobile version => slidable drawer
//TODO: Use PageView to do this
class _DrawerItemState extends State<DrawerItem> {
  var textColor = Colors.white;
  late var x;
  late var y;
  double _exitCounter = 0;
  bool hasTap = false;
  Color stayedColor = Color(0xFF69d6c5);
  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = Color(0xFF69d6c5);
      // print(textColor);
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      if (onPressed == false) {
        textColor = Colors.white;
        _exitCounter++;
      }
    });
  }

  bool hasClicked() {
    if (widget.color == Colors.white) {
      return false;
    }
    return true;
  }

  @override
  void initState() {
    // print('widget.pageNumber is ${widget.pageNumber}');
    // print(
    //     'Provider.of<DataProvider>(context, listen: false).getCurrentPage is ${Provider.of<DataProvider>(context, listen: false).getCurrentPage}');

    super.initState();
  }

  bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    print('rebuild');

    if (widget.pageNumber <=
            Provider.of<DataProvider>(context, listen: true).getCurrentPage &&
        Provider.of<DataProvider>(context, listen: true).getCurrentPage <
            widget.pageNumber + 1) {
      // if (Provider.of<DataProvider>(context, listen: false).getCurrentPage >
      //     widget.pageNumber - 1) {
      setState(() {
        hasTap = !hasTap;
        textColor = Color(0xFF69d6c5);
      });

      print('widget.pageNumber is ${widget.pageNumber}');
      print(
          'Provider.of<DataProvider>(context, listen: true).getCurrentPage is ${Provider.of<DataProvider>(context, listen: false).getCurrentPage}');
      // }
    } else
    // if (Provider.of<DataProvider>(context, listen: true).getCurrentPage >
    //   widget.pageNumber + 1)
    {
      // if (Provider.of<DataProvider>(context, listen: true).getCurrentPage <
      //     widget.pageNumber - 1)
      // {
      setState(() {
        print(
            'Provider.of<DataProvider>(context, listen: true).getCurrentPage is ${Provider.of<DataProvider>(context, listen: false).getCurrentPage}');
        print('else');
        textColor = Colors.white;
      });
      // }
    }
    ;
    // Provider.of<DataProvider>(context, listen: false)
    //     .updateStayOnPage(widget.pageNumber);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: MouseRegion(
        onHover: _updateLocation,
        onExit: _incrementExit,
        child: GestureDetector(
          onTap: () {
            // Provider.of<DataProvider>(context, listen: false)
            //     .updateStayOnPage(widget.pageNumber);

            setState(() {
              onPressed = true;
              textColor = Color(0xFF69d6c5);
            });

            // if (widget.pageNumber <=
            //         Provider.of<DataProvider>(context, listen: false)
            //             .getCurrentPage &&
            //     Provider.of<DataProvider>(context, listen: false)
            //             .getCurrentPage <
            //         widget.pageNumber + 1) {
            //   setState(() {
            //
            //   });
            // }
            widget.jumpToPage();
          },
          child: Text(
            widget.title,
            style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: hasClicked()
                    ? widget.color
                    : textColor), //TODO: find a thinner OpenSans
          ),
        ),
      ),
    );
  }
}
