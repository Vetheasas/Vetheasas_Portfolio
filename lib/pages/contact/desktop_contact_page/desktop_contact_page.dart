import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/rendering.dart';

class DesktopContactPage extends StatelessWidget {
  const DesktopContactPage({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(left: 50, top: 200, bottom: 200),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: Text(
                    'Contact me',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80),
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
                  text: 'Address: No. 68, St.NW-21, Phnom Penh Thmei,'
                      ' SenSok, Phnom Penh',
                  icon: Icons.location_city,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ContactText extends StatelessWidget {
  late String text;
  late IconData icon;
  ContactText({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              icon,
              color: Colors.white,
              size: 50,
            ),
          ),
          Expanded(
            child: AutoSizeText(
              text,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
