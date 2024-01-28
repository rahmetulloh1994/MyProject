import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/app_bar_learn.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/container_sizedboz.dart';
import 'package:flutter_application_1/101/customwidgetleraning.dart';
import 'package:flutter_application_1/101/demopage/demopagelearn.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';
import 'package:flutter_application_1/101/indicator_learn.dart';
import 'package:flutter_application_1/101/list_tile_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/statelesswidgetlearn.dart';
import 'package:flutter_application_1/101/text_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: Colors.amber[400]),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: ListTileLearn(),
    );
  }
}
