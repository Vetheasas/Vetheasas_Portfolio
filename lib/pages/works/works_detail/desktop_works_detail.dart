import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:vetheasas_porfolio/components/drawer/desktop_drawer/desktop_page_drawer.dart';
import 'package:vetheasas_porfolio/components/drawer/mobile_drawer/mobile_drawer_item.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/application_detail/desktop_application_detail/desktop_application_detail.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/project_detail/project_detail_components/desktop_project_detail_components/desktop_application_detail_components.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/project_detail/desktop_project_detail.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/application_detail/application_detail_components/desktop_application_detail_components/desktop_work_details_components.dart';

class DesktopWorksDetail extends StatefulWidget {
  late String workName;
  late String iconLink;
  late Color color;
  late List<Widget> pictureList;
  late String description;
  late String installLink;
  late String githubLink;
  late List<Widget> platform;
  late List<Widget> projectDetail;

  DesktopWorksDetail(
      {required this.workName,
      required this.platform,
      required this.iconLink,
      required this.color,
      required this.pictureList,
      required this.description,
      required this.installLink,
      required this.githubLink,
      required this.projectDetail});

  @override
  State<DesktopWorksDetail> createState() => _DesktopWorksDetailState();
}

class _DesktopWorksDetailState extends State<DesktopWorksDetail> {
  bool applicationOrProject =
      true; // true is application detail / false is project detail
  void getApplicationDetail() {
    setState(() {
      applicationOrProject = true;
    });
  }

  void getProjectDetail() {
    setState(() {
      applicationOrProject = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('width is ${MediaQuery.of(context).size.width}');
    return Scaffold(
        body: Container(
      color: Color(0xFF0e1d3b),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          applicationOrProject
              ? ApplicationDetail(
                  widget: widget,
                )
              : ProjectDetail(
                  widget: widget,
                  projectDetail: widget.projectDetail,
                ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Container(
              height: 200,
              child: TopBar(
                workName: widget.workName,
                applicationDetail: () {
                  getApplicationDetail();
                },
                projectDetail: () {
                  getProjectDetail();
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
