import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DesktopEducationPage extends StatelessWidget {
  const DesktopEducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              'Education',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: EducationItem(
                    imageLink: 'assets/education/rupp.png',
                    title: 'Bachelor of Information Technology',
                    description:
                        'In the Royal University of Phnom Penh, I graduated with a Bachelor degree in Information Technology in 2020.',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: EducationItem(
                    title: 'Bachelor of Education in English',
                    imageLink: 'assets/education/ifl.png',
                    description:
                        'In IFL (Institute of Foreign Languages), I graduated with a Bachelor degree in Education in English in 2020.',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: EducationItem(
                    title: 'Intermediate Japanese Conversational Certificate',
                    imageLink: 'assets/education/cjcc.png',
                    description:
                        'In CJCC (Cambodia-Japan Cooperation Center), I graduated with a certificate in Intermediate Japanese Conversation in 2019.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//TODO: make font scales with size of the device
class EducationItem extends StatelessWidget {
  late String imageLink;
  late String title;
  late String description;
  EducationItem(
      {required this.imageLink,
      required this.title,
      required this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: Image.asset(imageLink)),
                Expanded(
                  flex: 4,
                  child: EducationText(
                    text: title,
                    textSize: 30,
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 4,
              child: EducationText(
                text: description,
                textSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EducationText extends StatelessWidget {
  late String text;
  late double textSize;
  EducationText({required this.text, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: AutoSizeText(
        text,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: textSize),
        maxLines: 3,
        minFontSize: 1,
      ),
    );
  }
}
