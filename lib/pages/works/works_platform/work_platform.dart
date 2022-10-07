import 'package:flutter/material.dart';

Widget androidPlatform = Padding(
    padding: EdgeInsets.only(left: 50),
    child: Column(
      children: [
        SizedBox(
            height: 50,
            width: 100,
            child: Image.asset(
              'assets/images/android_logo.png',
              color: Colors.white,
            )),
        SizedBox(
          height: 27,
        )
      ],
    ));
Widget windowsPlatform = Padding(
  padding: EdgeInsets.only(left: 60),
  child: SizedBox(
      height: 50,
      width: 50,
      child: Image.asset(
        'assets/images/windows_logo.png',
        color: Colors.white,
      )),
);
Widget webPlatform = Padding(
  padding: EdgeInsets.only(left: 60),
  child: SizedBox(
      height: 50,
      width: 50,
      child: Image.asset(
        'assets/images/web_logo.png',
        color: Colors.white,
      )),
);
