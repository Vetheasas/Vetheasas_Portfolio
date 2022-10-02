import 'package:flutter/material.dart';

class MobileWorksPage extends StatelessWidget {
  const MobileWorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About me',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'I\'m specialized in making responsive cross-platform applications.'
                  'I can also create responsive websites or web applications using flutter.'
                  'I am very passionate about mobile application development,'
                  ' and I love to learn about new emerging programming language such as flutter.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
