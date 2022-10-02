import 'package:flutter/material.dart';

class DesktopAboutPage extends StatelessWidget {
  const DesktopAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                    'About me',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0, top: 100, bottom: 100),
                  child: Text(
                    'I\'m specialized in making responsive cross-platform applications.'
                    '\n'
                    '\nI can also create responsive websites or web applications using flutter.'
                    '\n'
                    '\nI am very passionate about mobile application development,'
                    '\n'
                    '\nand I love to learn about new emerging programming language such as flutter.',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  'assets/images/about_flutter_bird.png',
                ),
                // colorFilter: ColorFilter.mode(
                //   Colors.grey,
                //   BlendMode.saturation,
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
