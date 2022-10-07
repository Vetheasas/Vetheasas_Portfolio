import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/desktop_works_detail.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/mobile_works_detail.dart';

class WorksDetail extends StatefulWidget {
  late String workname;
  late String iconLink;
  late Color color;
  late List<Widget> pictureList;
  late String description;

  late List<Widget> platform;
  late List<String>
      links; //first link is github link; second two links are mobile, desktop install links
  WorksDetail({
    required this.workname,
    required this.platform,
    required this.links,
    required this.iconLink,
    required this.color,
    required this.pictureList,
    required this.description,
  });

  @override
  State<WorksDetail> createState() => _WorksDetailState();
}

class _WorksDetailState extends State<WorksDetail> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileWorksDetail(
        workName: widget.workname,
        iconLink: widget.iconLink,
        color: widget.color,
        pictureList: widget.pictureList,
        description: widget.description,
        githubLink: widget.links[0],
        installLink: widget.links[1],
        platform: widget.platform,
      ),
      desktop: DesktopWorksDetail(
        workName: widget.workname,
        iconLink: widget.iconLink,
        color: widget.color,
        pictureList: widget.pictureList,
        description: widget.description,
        githubLink: widget.links[0],
        installLink: widget.links[2],
        platform: widget.platform,
      ),
    );
  }
}
