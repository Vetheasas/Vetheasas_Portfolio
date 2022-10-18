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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Image.asset(
                    logoDirectory,
                    fit: BoxFit.scaleDown,
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 200,
                child: Image.asset(
                  logoDirectory,
                  fit: BoxFit.scaleDown,
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

class ProjectTextImage extends StatelessWidget {
  late String mobileImageDirectory;

  ProjectTextImage({
    required this.mobileImageDirectory,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF101128),
              height: 250,
              width: 250,
              child: Image.asset(
                mobileImageDirectory,
                fit: BoxFit.fitHeight,
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
      padding: const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
      child: Text(
        projectDetailText,
        style: TextStyle(
            fontSize: 17, fontFamily: 'SFUIText', fontWeight: FontWeight.w400),
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: AutoSizeText(
        title,
        maxLines: 1,
        style: TextStyle(
            fontSize: 25, fontFamily: 'SFUIText', fontWeight: FontWeight.w600),
      ),
    );
  }
}
