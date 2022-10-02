import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/components/chart/desktop_bar_chart.dart';

class DesktopSkillsPage extends StatelessWidget {
  const DesktopSkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
            padding: const EdgeInsets.only(
                left: 100, right: 100, bottom: 100, top: 320),
            child: Container(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
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
            color: Color(0xFF472981),
            border: Border.all(color: Color(0xFF141530), width: 5),
            borderRadius: BorderRadius.circular(20)),
        height: 200,
        width: 350,
        child: Image.asset(
          imageDirectory,
          fit: BoxFit.fitWidth,
        ));
  }
}
