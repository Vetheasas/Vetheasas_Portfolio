import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  'Contact me',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
                ),
              ),
              ContactText(
                text: 'Mobile Phone: 099 50 51 62',
                icon: Icons.phone,
              ),
              ContactText(
                text: 'Email: Vetheasas@gmail.com',
                icon: Icons.email,
              ),
              ContactText(
                text:
                    'Address: No. 68, St.NW-21,Phnom Penh\nThmei, SenSok, Phnom Penh',
                icon: Icons.location_city,
                iconBottomPadding: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ContactText extends StatelessWidget {
  late String text;
  late IconData icon;
  late double iconBottomPadding;
  ContactText(
      {required this.text, required this.icon, this.iconBottomPadding = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 25, right: 10, bottom: iconBottomPadding),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(text,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              textAlign: TextAlign.start),
        ],
      ),
    );
  }
}
