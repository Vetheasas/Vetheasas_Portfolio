import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  MobileHomePage();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Hi!\nI am Vetheasas!',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 60),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'assets/images/flutter_bird.png',
                          ),
                          // colorFilter: ColorFilter.mode(
                          //   Colors.grey,
                          //   BlendMode.saturation,
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30, top: 20, bottom: 0),
                  child: Text(
                    'I can create Cross-Platform app using Flutter.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
