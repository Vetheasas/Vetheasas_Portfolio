import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/mobile_work_details_components.dart';

class MobileWorksDetail extends StatefulWidget {
  late String workName;
  late String iconLink;
  late Color color;
  late List<Widget> pictureList;
  late String description;
  late String installLink;
  late String githubLink;
  late List<Widget> platform;
  MobileWorksDetail(
      {required this.workName,
      required this.iconLink,
      required this.color,
      required this.pictureList,
      required this.description,
      required this.installLink,
      required this.githubLink,
      required this.platform});

  @override
  State<MobileWorksDetail> createState() => _MobileWorksDetailState();
}

class _MobileWorksDetailState extends State<MobileWorksDetail> {
  @override
  Widget build(BuildContext context) {
    print('width is ${MediaQuery.of(context).size.width}');
    return Container(
      color: Color(0xFF101128),
      child: SafeArea(
        child: Scaffold(
            body: Container(
          color: Color(0xFF0e1d3b),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TopBar(
                  workName: widget.workName,
                ),
              ),
              Expanded(
                flex: 5,
                child: ListView(
                  children: [
                    //TODO: make stack a row instead => make a center widget that will not let you be on the side
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        height: 325,
                        child: WorksTitleIcon(
                          title: widget.workName,
                          installLink: widget.installLink,
                          iconLink: widget.iconLink,
                          color: widget.color,
                          githubLink: widget.githubLink,
                          platform: widget.platform,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Transform.scale(
                        scale: 0.9,
                        child: Row(
                          children: [
                            AutoSizeText(
                              'Platform',
                              style: TextStyle(
                                  fontFamily: 'SFUIText', fontSize: 15),
                            ),
                            Row(
                              children: widget.platform,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10, top: 30),
                      child: WorksPicturesPreview(
                        pictureList: widget.pictureList,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: DescriptionText(
                        description: widget.description,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
//TODO: add compatible with
