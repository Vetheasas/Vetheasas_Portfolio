import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/components/chart/desktop_bar_chart.dart';

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
                    color: Colors.deepPurple,
                  ),
                  SkillItem(
                    imageDirectory: 'assets/skills/dart.png',
                    color: Colors.deepPurple,
                  ),
                  SkillItem(
                    imageDirectory: 'assets/skills/sqlite.png',
                    color: Colors.deepPurple,
                  ),
                  SkillItem(
                    imageDirectory: 'assets/skills/firebase.png',
                    color: Colors.deepPurple,
                  ),
                  SkillItem(
                    imageDirectory: 'assets/skills/posgres.png',
                    color: Colors.deepPurple,
                  ),
                  SkillItem(
                    imageDirectory: 'assets/skills/python.png',
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
          ),
        )

        // Expanded(
        //   flex: 3,
        //   child: Transform.scale(
        //     scale: 2,
        //     child: Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(
        //           fit: BoxFit.fitWidth,
        //           image: AssetImage(
        //             'assets/images/flutter_bird.png',
        //           ),
        //           // colorFilter: ColorFilter.mode(
        //           //   Colors.grey,
        //           //   BlendMode.saturation,
        //           // ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Expanded(
        //   flex: 4,
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 50),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 0),
        //           child: Text(
        //             'Contact me!',
        //             style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80),
        //           ),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(right: 0, top: 100, bottom: 100),
        //           child: Text(
        //             'I can create Cross-Platform app using Flutter.',
        //             style: TextStyle(fontSize: 25),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  late String imageDirectory;
  late Color color;
  SkillItem({required this.imageDirectory, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.green[500],
            border: Border.all(color: Color(0xFF141530), width: 5),
            borderRadius: BorderRadius.circular(20)),
        child: Image.asset(
          imageDirectory,
          fit: BoxFit.fitWidth,
        ));
  }
}
