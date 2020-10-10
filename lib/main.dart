import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:markd/routes/homeRoute.dart';
import 'package:markd/routes/loginRoute.dart';

import 'helpers/hexColors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1000,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        ],
      ),
      title: 'markd.',
      theme: ThemeData(
        primaryColor: HexColor('#FFB74D'),
        accentColor: Colors.black,
        splashColor: Colors.black12,
        highlightColor: Colors.black12,

        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
