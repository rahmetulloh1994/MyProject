import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String welcomeTitle = 'Merhaba App Bar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(welcomeTitle),
        // centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 2,
        // leading: Icon(Icons.chevron_left),
        // systemOverlayStyle:
        //     SystemUiOverlayStyle.light, // status barin rengini etkiler
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.zoom_out_outlined),
          ),
          CircularProgressIndicator(),
        ],
      ),
      body: Container(
        color: Colors.tealAccent,
        width: double.infinity,
      ),
    );
  }
}
