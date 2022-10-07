import 'package:flutter/material.dart';
import 'package:vetheasas_porfolio/pages/works/works_item/works_item.dart';

import '../works_detail/works_detail.dart';
import '../works_platform/work_platform.dart';

class MobileWorksPage extends StatelessWidget {
  const MobileWorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Text(
                    'Works',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: WorkItem(
                    upperColor: Color(0xFFb5afe1),
                    bottomColor: Color(0xFFd0c6ff),
                    circleColor: Color(0xFF404061),
                    logoLink: 'assets/works/idi_screenshot/test_logo.png',
                    workName: 'Item Difficulty Index',
                    description:
                        'An app to calculate each item of a test\'s difficulty to improve test\'s quality',
                    bgTextSize: 40,
                    workTextSize: 10,
                    logoSize: 80,
                    navigateTo: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorksDetail(
                                  platform: [windowsPlatform, androidPlatform],
                                  workname: 'Item Difficulty Index',
                                  iconLink:
                                      'assets/works/idi_screenshot/test_logo.png',
                                  color: Color(0xFFa69fca),
                                  pictureList: [
                                    Image.asset(
                                        'assets/works/idi_screenshot/0.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/1.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/2.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/6.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/7.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/8.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/9.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/10.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w0.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w1.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w2.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w3.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w4.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w5.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'assets/works/idi_screenshot/windows_idi/w6.png'),
                                  ],
                                  description:
                                      'According to classroom.com, "The item difficulty index is a very useful analytical tool for statistical analysis, especially when it comes to determining the validity of test questions in an educational setting. The item difficulty index is often called the p-value because it is a measure of proportion – for example, the proportion of students who answer a particular question correctly on a test. P-values are found by using the difficulty index formula, and they are reported in a range between 0.0 and 1.0. In the scenario with students answering questions on a test, higher p-values, or p-values closer to 1.0, correspond with a greater proportion of students answering that question correctly. In other words, easier test questions will have greater p-values. That is why some statisticians also call the difficulty index “the easiness index” when they are performing an item analysis on data sets that have to do with education."',
                                  links: [
                                    'https://github.com/Vetheasas/Item_Difficulty_Index',
                                    'https://drive.google.com/file/d/1RurihcJv8N9WqspUMQi7DnZNuAKRCP-d/view?usp=sharing',
                                    'https://drive.google.com/file/d/18MWi3GciQuIi6BH00QbSC3fXeA56_P1L/view?usp=sharing'
                                  ],
                                )),
                      );
                    },
                    // width: 600,
                    // height: 700,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: WorkItem(
                      upperColor: Color(0xFF5261d0),
                      bottomColor: Color(0xFF6f74ff),
                      circleColor: Color(0xFF131c3a),
                      logoLink: 'assets/images/flutter_bird.png',
                      workName: 'Portfolio Website',
                      description: 'A responsive website to showcase my work',
                      bgTextSize: 40,
                      workTextSize: 10,
                      logoSize: 200,
                      navigateTo: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorksDetail(
                                    workname: 'Portfolio Website',
                                    platform: [webPlatform],
                                    links: [
                                      'https://github.com/Vetheasas/Vetheasas_Portfolio',
                                      '',
                                      ''
                                    ],
                                    iconLink: 'assets/images/flutter_bird.png',
                                    color: Colors.blue,
                                    pictureList: [
                                      Image.asset(
                                          'assets/works/portfolio_website/desktop_portfolio_website/wi0.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/desktop_portfolio_website/wi1.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/desktop_portfolio_website/wi2.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/desktop_portfolio_website/wi3.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/desktop_portfolio_website/wi4.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/desktop_portfolio_website/wi5.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/0.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/1.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/2.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/3.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/4.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/5.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/works/portfolio_website/mobile_portfolio_website/6.png'),
                                    ],
                                    description:
                                        '\n\nThis responsive website is used to showcase Vetheasas\'s works and background.\n\n It includes: \n\n- What Vetheasas is about\n\n- Vetheasas\' Skill\n\n- Vetheasas\' Education\n\n- Vetheasas\' Work\n\n- Vetheasas\' contact detail',
                                  )),
                        );
                      },
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
