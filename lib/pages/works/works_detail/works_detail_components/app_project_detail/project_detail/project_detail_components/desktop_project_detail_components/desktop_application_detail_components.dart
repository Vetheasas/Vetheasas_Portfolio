import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProjectDescriptionSpecialLogo extends StatelessWidget {
  late String logoDirectory;
  late Color color;

  ProjectDescriptionSpecialLogo(
      {required this.logoDirectory, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 1200,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(100),
                  child: Image.asset(
                    logoDirectory,
                  ),
                ),
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectDescriptionLogo extends StatelessWidget {
  late String logoDirectory;
  late Color color;

  ProjectDescriptionLogo({required this.logoDirectory, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 1200,
                height: 600,
                child: Image.asset(logoDirectory),
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectTextImage extends StatelessWidget {
  late String desktopImageDirectory;
  late String mobileImageDirectory;

  ProjectTextImage({
    required this.mobileImageDirectory,
    required this.desktopImageDirectory,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 400,
              width: 400,
              child: Image.asset(
                mobileImageDirectory,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 400,
              width: 400,
              child: Image.asset(
                desktopImageDirectory,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectDetailText extends StatelessWidget {
  late String projectDetailText;
  ProjectDetailText({required this.projectDetailText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 100, right: 100, top: 25, bottom: 25),
      child: Text(
        projectDetailText,
        style: TextStyle(
            fontSize: 25, fontFamily: 'SFUIText', fontWeight: FontWeight.w400),
      ),
    );
  }
}

class ProjectDescriptionTitle extends StatelessWidget {
  late String title;
  ProjectDescriptionTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: AutoSizeText(
        title,
        maxLines: 1,
        style: TextStyle(
            fontSize: 40, fontFamily: 'SFUIText', fontWeight: FontWeight.w600),
      ),
    );
  }
}
