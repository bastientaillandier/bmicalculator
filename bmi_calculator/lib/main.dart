import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(114, 52, 88, .1),
  100: Color.fromRGBO(114, 52, 88, .2),
  200: Color.fromRGBO(114, 52, 88, .3),
  300: Color.fromRGBO(114, 52, 88, .4),
  400: Color.fromRGBO(114, 52, 88, .5),
  500: Color.fromRGBO(114, 52, 88, .6),
  600: Color.fromRGBO(114, 52, 88, .7),
  700: Color.fromRGBO(114, 52, 88, .8),
  800: Color.fromRGBO(114, 52, 88, .9),
  900: Color.fromRGBO(114, 52, 88, 1),
};

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(0xFF723458, color),
          accentColor: kOrangeColor,
        ),
        scaffoldBackgroundColor: kDarkBlueColor,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
