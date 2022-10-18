import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../application_detail/application_detail_components/desktop_application_detail_components/desktop_work_details_components.dart';
import '../project_detail_components/desktop_project_detail_components/desktop_application_detail_components.dart';

List<Widget> desktopIDIProjectDetailData = [
//TODO: make stack a row instead => make a center widget that will not let you be on the side

  AboutThisProject(),
  ProjectDescriptionTitle(title: 'Splash Screen'),
  ProjectTextImage(
    mobileImageDirectory: 'assets/works/idi_screenshot/0.png',
    desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w0.png',
  ),
  ProjectDetailText(
    projectDetailText:
        'I first started off making the app with a splash screen to introduce the user to the app before the Main Menu screen.\n\n',
  ),
  ProjectDescriptionTitle(title: 'Main Menu'),
  ProjectTextImage(
      mobileImageDirectory: 'assets/works/idi_screenshot/1.png',
      desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w1.png'),
  ProjectDetailText(
      projectDetailText:
          'On the Main Menu screen, there are two buttons "Test List" and "Add a new test". These "Test List" button will take the user to the TestListScreen via the Navigator.push method while the "Add a new test" will lead the user to the InputData screen via the same method.\n\n'
          'Meanwhile, in the background, during the first initialization of the MainMenu screen, the app checks whether the database already exists in the app or not.\n\n'
          'If the database already exists, the app will create the testList button, so when the user navigate to the TestList screen, a list of button would appear in an instant.\n\n'
          'If the database doesn\'t already exist, it will not create the testList button.'),
  ProjectDescriptionTitle(
    title: 'Inputting Data',
  ),
  ProjectTextImage(
    mobileImageDirectory: 'assets/works/idi_screenshot/2.png',
    desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w2.png',
  ),
  ProjectDetailText(
      projectDetailText: 'In the Input Data Screen, there are 3 buttons.\n\n'
          'The first button is for providing a sample file for the analysis and calculation via the url_launcher package.\n\n'
          'The second button is a tutorial that teaches users how to use the app via a package named "flutter_sliding_tutorial".\n\n'
          'The last button is a button that will allow users to browse the computer or phone to find their downloaded csv file from google form to analyze and calculate the Item Difficulty Index.'
          'I use a package called file_picker to pick the csv file from the devices.\n\n'
          'After that, I use the csv package to convert the csv data to a list data in dart. According to support.google.com, "A CSV (comma-separated values) file is a text file that has a specific format which allows data to be saved in a table structured format." It is used by google because it is a light and convenient file format for developer to import and analyze data.\n\n'
          'I created my own algorithm to extract the data and apply the Item Difficulty Index formula logic to calculate each Item of a test\'s IDI.'
          ''),
  ProjectDescriptionTitle(title: 'Database'),
  ProjectDescriptionLogo(
    logoDirectory: 'assets/skills/sqlite.png',
    color: Color(0xFF9a95bd),
  ),
  ProjectDetailText(
      projectDetailText:
          'The data needs to be persisted even if the user exits the application.\n\n'
          'For users\' future usage of the analyzed or calculated data, I decided to use a relational database via a package called SQFlite to store the data. SQFlite is a wrapper around a relational database called SQlite. I can\'t use SQlite directly because it doesn\'t natively support dart/flutter.\n\n'
          'To use SQFlite, I need to initialize the database with a database helper. Furthermore, withing the database helper, I also created important function such as create table, insert, query, delete data..etc, so I can manipulate the data later on.'),
  ProjectTextImage(
      mobileImageDirectory: 'assets/works/idi_screenshot/5.png',
      desktopImageDirectory:
          'assets/works/portfolio_website/desktop_portfolio_website/wi6.png'),
  ProjectDetailText(
      projectDetailText:
          'Upon getting the calculated data of IDI from my algorithm, I create a table that has name based on the input from the user via the screen shown above.'),
  ProjectDescriptionTitle(title: 'State Management'),
  ProjectDescriptionLogo(
    logoDirectory: 'assets/images/provider.png',
    color: Color(0xFF9a95bd),
  ),
  ProjectDetailText(
      projectDetailText:
          'Now that we have taken care of storing the data, we need to distribute the data to the right screen or widget. In order to do that efficiently, we need to use good state management.\n\n'
          'One of the best state management package that the flutter team is recommending is called Provider. It handles state as cleanly as possible by separating the state from the User Interface and rebuilding User Interface based on the state changes.\n\n'
          'I use Provider to take in data from various screens or widgets and distribute the data to screens such as the Item Difficult List screen, Change List screen..etc.'),
  ProjectDescriptionTitle(title: 'Data Model'),
  ProjectDetailText(
      projectDetailText:
          'To use the data in the app efficiently, I create two data model classes.\n\n\n'
          'The first one is the test data model. It contains '
          '\n\n- testName'
          '\n\n- testDate'
          '\n\n- itemIndexDifficultyList'
          '\n\n- testQuality'
          '\n\n- changeList'
          '\n\nThe second is the item model. It contains'
          '\n\n- keep'
          '\n\n- itemNumber'
          '\n\n- itemScore'
          '\n\n- testName'
          '\n\nI use the data from the calculation to initialize these variable and create the custom test and item data model.'),
  ProjectDescriptionTitle(title: 'Test List Screen'),
  ProjectTextImage(
      mobileImageDirectory: 'assets/works/idi_screenshot/7.png',
      desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w3.png'),
  ProjectDetailText(
      projectDetailText:
          'The test data model can be then used to create the test button widget.\n\n'
          'The test button has the name of the test/ table being displayed. It has the date of the test that was administered. The quality indicator is on the further right.'),
  ProjectDescriptionTitle(title: 'Quality Indicator'),
  ProjectDescriptionSpecialLogo(
      logoDirectory: 'assets/works/idi_screenshot/Check.png',
      color: Color(0xFF46486c)),
  ProjectDetailText(
      projectDetailText:
          '- Tick means that the test\'s quality is acceptable. The test is balance or neither too difficult or easy. It is in the middle in term of difficulty. The teacher may not have to revise the test.'),

  ProjectDescriptionSpecialLogo(
      logoDirectory: 'assets/works/idi_screenshot/question.png',
      color: Color(0xFF46486c)),
  ProjectDetailText(
      projectDetailText:
          '- The question mark means the test\'s quality is questionable, which means that the test is quite difficult or easy. As a result, it is up to the teacher\'s expectation. They may intentionally want the test to be difficult or easy. If the teacher expected the difficulty to be quite easy or diffcult, they may not have to revise the test. However, if the difficulty is not the same as their expectation once they checked the difficulty index in the next screen, they can revise the items, so the test\'s difficulty would match their expectation.'),
  ProjectDescriptionSpecialLogo(
      logoDirectory: 'assets/works/idi_screenshot/Cross.png',
      color: Color(0xFF46486c)),
  ProjectDetailText(
      projectDetailText:
          '- Lastly, the cross means that the test is unacceptable. In other words, it is either too difficult or easy. The teacher must revise and edit the test\'s item to match their expectation or the acceptable level.'),

  ProjectDescriptionTitle(
    title: 'Item Difficulty Screen',
  ),
  ProjectTextImage(
      mobileImageDirectory: 'assets/works/idi_screenshot/8.png',
      desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w4.png'),
  ProjectDetailText(
      projectDetailText:
          'The item difficulty screen is the screen that previews the quality of each item in the selected test. The change list arrow takes user to the change list screen where the items that needed to be changed are located.\n\n'
          'The screen uses getIDIList method with provider to display all item buttons. The user can tap or click on the item button to see the full detail or recommendation for the selected Item.'),
  ProjectDescriptionTitle(title: 'Individual Item Screen'),
  ProjectTextImage(
      mobileImageDirectory: 'assets/works/idi_screenshot/9.png',
      desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w5.png'),
  ProjectDetailText(
      projectDetailText:
          'Once the user selected an item button, the full detail and recommendation will be displayed in the individual item screen.'
          '\n\nWe can see the following:'
          '\n\n- Name of the item'
          '\n\n- Quality of the item'
          '\n\n- Description of the item (Item Difficulty Index + Recommendation)'
          '\n\n- Add to Change List button(If the user deems that the item needed to be changed, the user will tap or click on the button to add the item to the change list and delete the item from the Item Difficulty Index screen)'),
  ProjectDescriptionTitle(title: 'Change List'),
  ProjectTextImage(
      mobileImageDirectory: 'assets/works/idi_screenshot/10.png',
      desktopImageDirectory: 'assets/works/idi_screenshot/windows_idi/w6.png'),
  ProjectDetailText(
      projectDetailText:
          'The change list screen is where the items that needed to be changed are located. The user can use this screen to see what they have decided should be changed. While revising the test, the user can look at the screen and change the item on the test itself.')
];
List<Widget> desktopPortfolioProjectDetailData = [
  AboutThisProject(),
  ProjectDescriptionTitle(title: 'Responsive Builder'),
  ProjectDescriptionLogo(
      logoDirectory: 'assets/works/portfolio_website/responsive_builder.png',
      color: Color(0xFF101128)),
  ProjectDetailText(
      projectDetailText:
          'To make the website properly displaying content across different devices, I decide to use the responsive_builder package to achieve that.'),
  ProjectDescriptionTitle(title: 'Page View'),
  ProjectTextImage(
    mobileImageDirectory:
        'assets/works/portfolio_website/mobile_portfolio_website/0.png',
    desktopImageDirectory:
        'assets/works/portfolio_website/desktop_portfolio_website/wi0.png',
  ),
  ProjectDetailText(
      projectDetailText:
          'I use the widget called PageView to display the main content of the home page as well as the whole website because PageView allows visitors to scroll and swipe to see the content intuitively with good animation.'),
  ProjectDescriptionTitle(title: 'Drawer'),
  ProjectTextImage(
    mobileImageDirectory:
        'assets/works/portfolio_website/mobile_portfolio_website/1.png',
    desktopImageDirectory:
        'assets/works/portfolio_website/desktop_portfolio_website/wi0.png',
  ),
  ProjectDetailText(
      projectDetailText:
          'I add a drawer to left side of the page with the drawer widget. There are'
          '\n\n- My profile'
          '\n\n- Home button'
          '\n\n- About button'
          '\n\n- Skills button'
          '\n\n- Education button'
          '\n\n- Work button'
          '\n\n- Contact button'
          '\n\nEach button takes the visitor to the page according to the buttons\' names respectively.'),
  ProjectDescriptionTitle(title: 'State Management'),
  ProjectDescriptionLogo(
    logoDirectory: 'assets/images/provider.png',
    color: Color(0xFF101128),
  ),
  ProjectDetailText(
      projectDetailText:
          'One of the best state management package that the flutter team is recommending is called Provider. It handles state as cleanly as possible by separating the state from the User Interface and rebuilding User Interface based on the state changes.\n\n'
          'I use Provider mainly to keep track of the current page of the PageView widget, so on the desktop version of the website, the current page can be highlighted correctly.'),
  ProjectDescriptionTitle(title: 'Work Item'),
  ProjectTextImage(
    mobileImageDirectory:
        'assets/works/portfolio_website/mobile_portfolio_website/5.png',
    desktopImageDirectory:
        'assets/works/portfolio_website/desktop_portfolio_website/wi4.png',
  ),
  ProjectDetailText(
      projectDetailText:
          'On the work page, I created a custom widget that preview my work including the application or website\'s color scheme and a short description of the website or application. '),
  ProjectDescriptionTitle(title: 'Work Detail'),
  ProjectTextImage(
    mobileImageDirectory:
        'assets/works/portfolio_website/mobile_portfolio_website/7.png',
    desktopImageDirectory:
        'assets/works/portfolio_website/desktop_portfolio_website/wi7.png',
  ),
  ProjectDetailText(
      projectDetailText:
          'The work detail page is where I showcase more of the application or website in full detail. There are 2 main sections to this page.'
          '\n\nThe 2 main sections are'
          '\n\n- Application/Website Detail'
          '\n\n- Project Detail'),
  ProjectDescriptionTitle(title: 'Application/Website Detail'),
  ProjectTextImage(
    mobileImageDirectory:
        'assets/works/portfolio_website/mobile_portfolio_website/7.png',
    desktopImageDirectory:
        'assets/works/portfolio_website/desktop_portfolio_website/wi7.png',
  ),
  ProjectDetailText(
      projectDetailText: 'This section includes'
          '\n\n-The title and logo of the the application or website'
          '\n\n-Source Code Button(It takes the visitor to github where the source code is located)'
          '\n\n-Install/Download App button (The visitor can install or download the app with the help of a packaged called url_launcher)'
          '\n\n-Picture preview of the application/website'
          '\n\n-Full description about the what the application or website is about'),
  ProjectDescriptionTitle(title: 'Project Detail'),
  ProjectTextImage(
    mobileImageDirectory:
        'assets/works/portfolio_website/mobile_portfolio_website/8.png',
    desktopImageDirectory:
        'assets/works/portfolio_website/desktop_portfolio_website/wi8.png',
  ),
  ProjectDetailText(
      projectDetailText:
          'This section is about how the application or website is programmed, how the application or website works under the hood, and the technology that is used to build the application or website.')
];

class AboutThisProject extends StatelessWidget {
  const AboutThisProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: AutoSizeText(
        'About this project',
        maxLines: 1,
        style: TextStyle(
            fontSize: 80, fontFamily: 'SFUIText', fontWeight: FontWeight.w900),
      ),
    );
  }
}
