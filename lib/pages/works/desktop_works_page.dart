import 'package:flutter/material.dart';

class DesktopWorksPage extends StatelessWidget {
  const DesktopWorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Transform.scale(
            scale: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
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
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    'Contact me!',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0, top: 100, bottom: 100),
                  child: Text(
                    'I can create Cross-Platform app using Flutter.',
                    style: TextStyle(fontSize: 25),
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
