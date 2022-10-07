import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vetheasas_porfolio/data_provider/data_provider.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/desktop_works_detail.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/mobile_works_detail.dart';
import 'package:vetheasas_porfolio/pages/works/works_detail/works_detail.dart';
import 'pages/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: TextTheme(
              bodyText1: TextStyle(),
              bodyText2: TextStyle(),
            ).apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
            fontFamily: 'Open Sans',
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage()),
    );
  }
}
//TODO: do mobile tomorrow
