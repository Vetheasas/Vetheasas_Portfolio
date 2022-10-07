import 'package:flutter/material.dart';

class MobileSkillsPage extends StatelessWidget {
  const MobileSkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Expanded(
        //   child: BarChartWidget(
        //     points: [],
        //   ),
        // ),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      'assets/images/skills_flutter_bird.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Skills',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
                    )),
              ],
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 3,
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
    return Container(
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
        child: Image.asset(
          imageDirectory,
          fit: BoxFit.fitWidth,
        ));
  }
}
