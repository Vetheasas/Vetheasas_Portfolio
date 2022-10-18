import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../desktop_works_detail.dart';
import '../application_detail/application_detail_components/desktop_application_detail_components/desktop_work_details_components.dart';
import 'project_detail_components/desktop_project_detail_components/desktop_application_detail_components.dart';

class ProjectDetail extends StatelessWidget {
  ProjectDetail({
    Key? key,
    required this.widget,
    required this.projectDetail,
  }) : super(key: key);

  final DesktopWorksDetail widget;
  late List<Widget> projectDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: ListView(
              children: projectDetail,
            ),
          ),
        ),
      ],
    );
  }
}
