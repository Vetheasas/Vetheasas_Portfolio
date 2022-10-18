import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../mobile_works_detail.dart';
import '../application_detail_components/mobile_application_detail_components/mobile_work_details_components.dart';

class MobileApplicationDetail extends StatelessWidget {
  const MobileApplicationDetail({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final MobileWorksDetail widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 106),
            child: ListView(
              children: [
                //TODO: make stack a row instead => make a center widget that will not let you be on the side
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                          style:
                              TextStyle(fontFamily: 'SFUIText', fontSize: 15),
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
