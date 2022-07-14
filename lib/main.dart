import 'package:flutter/material.dart';
import 'package:home_coding/screens/screen_home.dart';
import 'package:home_coding/theme/theme_button.dart';
import 'package:home_coding/theme/theme_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: buttonTheme(),
        elevatedButtonTheme: elevatedButtonTheme(),
        textTheme: textTheme(),
      ),
      home: const HomeWidget(),
    );
  }
}
