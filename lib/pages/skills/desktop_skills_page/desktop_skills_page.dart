import 'package:flutter/material.dart';

class DesktopSkillsPage extends StatelessWidget {
  const DesktopSkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Expanded(
        //   child: BarChartWidget(
        //     points: [],
        //   ),
        // ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  'Skills',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80),
                )),
            Transform.scale(
                scaleX: -1,
                child: Image.asset('assets/images/skills_flutter_bird.png')),
          ],
        )),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.only(left: 100, right: 100, bottom: 320, top: 320),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SkillItem(
                          imageDirectory: 'assets/skills/flutter.png',
                        ),
                        SkillItem(
                          imageDirectory: 'assets/skills/dart.png',
                        ),
                        SkillItem(
                          imageDirectory: 'assets/skills/sqlite.png',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SkillItem(
                          imageDirectory: 'assets/skills/firebase.png',
                        ),
                        SkillItem(
                          imageDirectory: 'assets/skills/posgres.png',
                        ),
                        SkillItem(
                          imageDirectory: 'assets/skills/python.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  late String imageDirectory;

  SkillItem({required this.imageDirectory});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 1.0],
                colors: [
                  Colors.blueAccent.shade700,
                  Colors.blue,
                ],
              ),
              border: Border.all(color: Color(0xFF141530), width: 5),
              borderRadius: BorderRadius.circular(20)),
          height: 250,
          width: 250,
          child: Image.asset(
            imageDirectory,
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
