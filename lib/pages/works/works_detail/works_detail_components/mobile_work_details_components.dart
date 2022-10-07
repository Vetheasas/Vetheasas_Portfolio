import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

class TopBar extends StatelessWidget {
  late String workName;
  TopBar({required this.workName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF101128),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/images/flutter_logo.png')),
                  ),
                  Expanded(
                    flex: 1,
                    child: AutoSizeText(
                      workName,
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expanded(
          //   child: Row(
          //     children: [
          //       Expanded(flex: 1, child: Container()
          //           // TextButton(
          //           //   onPressed: () {},
          //           //   child: Center(
          //           //     child: AutoSizeText(
          //           //       'Application Detail',
          //           //       maxLines: 1,
          //           //       style: TextStyle(
          //           //           fontSize: 15,
          //           //           fontWeight: FontWeight.w600,
          //           //           color: Colors.white),
          //           //     ),
          //           //   ),
          //           // ),
          //           ),
          //       Expanded(flex: 1, child: Container()
          //           // TextButton(
          //           //   onPressed: () {},
          //           //   child: Center(
          //           //     child: AutoSizeText(
          //           //       'Project Detail',
          //           //       maxLines: 1,
          //           //       style: TextStyle(
          //           //           fontSize: 15,
          //           //           fontWeight: FontWeight.w600,
          //           //           color: Colors.white),
          //           //     ),
          //           //   ),
          //           // ),
          //           ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class WorksTitleIcon extends StatelessWidget {
  late String title;
  late String githubLink;
  late String installLink;
  late String iconLink;
  late Color color;
  late List<Widget> platform;
  WorksTitleIcon(
      {required this.title,
      required this.platform,
      required this.installLink,
      required this.githubLink,
      required this.iconLink,
      required this.color});
  void _launchLink(String link) async {
    var url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  boxShadow: [
                    BoxShadow(
                      color: color.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Image.asset(
                  iconLink,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                  child: AutoSizeText(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'SFUIText',
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 15),
            child: Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                color: Color(0xFF2c313c),
                borderRadius: BorderRadius.circular(13),
              ),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      // elevation: MaterialStateProperty.all(3),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      )),
                  onPressed: () {
                    _launchLink(githubLink);
                  },
                  child: Text(
                    'Source Code',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SFUIText',
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ),
        installLink != ''
            ? Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 35),
                  child: Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.5, 1.0],
                        colors: [
                          Colors.blue,
                          Colors.lightBlueAccent,
                        ],
                      ),
                      color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            )),
                        onPressed: () {
                          _launchLink(installLink);
                        },
                        child: Text(
                          'Install',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SFUIText',
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
              )
            : Expanded(child: Container()),
      ],
    );
  }
}

class WorksPicturesPreview extends StatelessWidget {
  late List<Widget> pictureList;
  WorksPicturesPreview({required this.pictureList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 300,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: ScrollController(),
          physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: pictureList,
        ),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  late String description;

  DescriptionText({required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'About this work',
          maxLines: 1,
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'SFUIText',
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          description,
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'SFUIText',
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
