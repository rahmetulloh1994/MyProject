import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/text_learn.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final projectColors = ProjectColors();
  final projectSize = ProjectSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Learn'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
            color: projectColors.coloricon,
            iconSize: projectSize.iconsize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
            color: projectColors.coloricon,
            iconSize: projectSize.iconsize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
            color: projectColors.coloricon,
            iconSize: projectSize.iconsize,
          ),
        ],
      ),
    );
  }
}

class ProjectColors {
  final Color coloricon = Colors.cyan;
}

class ProjectSize {
  final double iconsize = 45;
}
