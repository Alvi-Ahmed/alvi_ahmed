import 'package:alvi_ahmed/pages/home_page.dart';
import 'package:alvi_ahmed/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Alviahmed(),
    );
  }
}
// ignore: camel_case_types
class Alviahmed extends StatelessWidget {
  const Alviahmed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alvi Ahmed',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
