import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:vetheasas_porfolio/components/drawer/desktop_drawer/desktop_page_drawer.dart';
import 'package:vetheasas_porfolio/components/drawer/mobile_drawer/mobile_drawer_item.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/desktop_work_details_components.dart';

class DesktopWorksDetail extends StatefulWidget {
  late String workName;
  late String iconLink;
  late Color color;
  late List<Widget> pictureList;
  late String description;
  late String installLink;
  late String githubLink;
  late List<Widget> platform;
  DesktopWorksDetail(
      {required this.workName,
      required this.platform,
      required this.iconLink,
      required this.color,
      required this.pictureList,
      required this.description,
      required this.installLink,
      required this.githubLink});

  @override
  State<DesktopWorksDetail> createState() => _DesktopWorksDetailState();
}

class _DesktopWorksDetailState extends State<DesktopWorksDetail> {
  @override
  Widget build(BuildContext context) {
    print('width is ${MediaQuery.of(context).size.width}');
    return Scaffold(
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
                  padding: const EdgeInsets.all(70),
                  child: WorksTitleIcon(
                    title: widget.workName,
                    installLink: widget.installLink,
                    githubLink: widget.githubLink,
                    iconLink: widget.iconLink,
                    color: widget.color,
                    platform: widget.platform,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(70),
                  child: WorksPicturesPreview(
                    pictureList: widget.pictureList,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(100),
                  child: DescriptionText(
                    description: widget.description,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
