import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/application_detail/application_detail_components/mobile_application_detail_components/mobile_work_details_components.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/application_detail/mobile_application_detail/mobile_application_detail.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail_components/app_project_detail/project_detail/mobile_project_detail.dart';

class MobileWorksDetail extends StatefulWidget {
  late String workName;
  late String iconLink;
  late Color color;
  late List<Widget> pictureList;
  late String description;
  late String installLink;
  late String githubLink;
  late List<Widget> platform;
  late List<Widget> projectDetailData;
  MobileWorksDetail(
      {required this.workName,
      required this.iconLink,
      required this.color,
      required this.pictureList,
      required this.description,
      required this.installLink,
      required this.githubLink,
      required this.platform,
      required this.projectDetailData});

  @override
  State<MobileWorksDetail> createState() => _MobileWorksDetailState();
}

class _MobileWorksDetailState extends State<MobileWorksDetail> {
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
    return Container(
      color: Color(0xFF101128),
      child: SafeArea(
        child: Scaffold(
            body: Container(
          color: Color(0xFF0e1d3b),
          child: Stack(
            children: [
              applicationOrProject
                  ? MobileApplicationDetail(
                      widget: widget,
                    )
                  : ProjectDetail(
                      widget: widget, projectDetail: widget.projectDetailData),
              Container(
                height: 106,
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
            ],
          ),
        )),
      ),
    );
  }
}

//TODO: add compatible with
