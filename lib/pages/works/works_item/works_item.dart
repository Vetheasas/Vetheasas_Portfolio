import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WorkItem extends StatelessWidget {
  late Color upperColor;
  late Color bottomColor;
  late Color circleColor;
  late String logoLink;
  late double logoSize;
  late String workName;
  late String description;
  late double bgTextSize;
  late double workTextSize;
  late VoidCallback navigateTo;
  WorkItem(
      {required this.upperColor,
      required this.bottomColor,
      required this.circleColor,
      required this.logoLink,
      required this.logoSize,
      required this.workName,
      required this.description,
      required this.bgTextSize,
      required this.workTextSize,
      required this.navigateTo});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
      ),
      onPressed: navigateTo,
      child: Container(
        // height: height,
        // width: width,
        decoration: BoxDecoration(
            color: bottomColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: upperColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: logoSize,
                          height: logoSize,
                          child: Image.asset(
                            logoLink,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: AutoSizeText(
                            workName,
                            maxLines: 1,
                            style: workItemTextStyle.copyWith(
                                fontSize: workTextSize,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: circleColor,
                        child: Image.asset(logoLink),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: AutoSizeText(
                          description,
                          maxLines: 3,
                          style: TextStyle(
                            fontFamily: 'SFUIText',
                            fontSize: 15,
                            color: Color(0xFF2b2622),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

const TextStyle workItemTextStyle = TextStyle(
    fontFamily: 'SFUIText',
    fontWeight: FontWeight.w800,
    color: Color(0xFF2b2622));
