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
      decoration: BoxDecoration(
        color: Color(0xFF101128),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF181b35),
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(1, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 45,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Image.asset('assets/images/flutter_logo.png'),
              ),
            ),
            Expanded(
              flex: 6,
              child: AutoSizeText(
                workName,
                maxLines: 1,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
            Expanded(flex: 2, child: Container()
                // Padding(
                //   padding: const EdgeInsets.only(left: 70),
                //   child: AutoSizeText(
                //     'Application Detail',
                //     maxLines: 1,
                //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                //   ),
                // ),
                ),
            Expanded(flex: 3, child: Container()
                // Padding(
                //   padding: const EdgeInsets.only(left: 70),
                //   child: AutoSizeText(
                //     'Project Detail',
                //     maxLines: 1,
                //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                //   ),
                // ),
                )
          ],
        ),
      ),
    );
  }
}

class WorksTitleIcon extends StatelessWidget {
  late String title;
  late String installLink;
  late String githubLink;
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
  void _launchURL(String link) async {
    var url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    title,
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: 'SFUIText',
                        fontSize: 80,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      AutoSizeText(
                        'Platform',
                        style: TextStyle(fontFamily: 'SFUIText', fontSize: 20),
                      ),
                      Row(
                        children: platform,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 700,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 65,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color(0xFF2c313c),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    // elevation: MaterialStateProperty.all(3),
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                      ),
                                    )),
                                onPressed: () {
                                  _launchURL(githubLink);
                                },
                                child: Text(
                                  'Source Code',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        installLink != ''
                            ? Expanded(
                                child: Container(
                                  height: 65,
                                  width: 300,
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
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                          // elevation: MaterialStateProperty.all(3),
                                          shadowColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(13.0),
                                            ),
                                          )),
                                      onPressed: () {
                                        _launchURL(installLink);
                                      },
                                      child: Text(
                                        'Download App',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ),
                              )
                            : Expanded(child: Container()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: DecoratedBox(
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
              child: Transform.scale(
                scale: 0.7,
                child: Image.asset(
                  iconLink,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ]);
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
              fontSize: 40,
              fontFamily: 'SFUIText',
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          description,
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'SFUIText',
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
//TODO: add desktop screenshot
//TODO: add compatibility indicators
