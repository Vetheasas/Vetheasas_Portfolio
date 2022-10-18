import 'package:flutter/material.dart';

import '../../../../desktop_works_detail.dart';
import '../application_detail_components/desktop_application_detail_components/desktop_work_details_components.dart';

class ApplicationDetail extends StatelessWidget {
  const ApplicationDetail({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DesktopWorksDetail widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
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
                    workName: widget.workName,
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
