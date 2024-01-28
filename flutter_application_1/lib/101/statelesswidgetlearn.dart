import 'package:flutter/material.dart';

class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Mytexts(mytext: 'ali'),
        Mytexts(mytext: 'ali2'),
        Mytexts(mytext: 'ali3'),
        Mytexts(mytext: 'ali4'),
        CustomContainer()
      ]),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightBlueAccent),
    );
  }
}

class Mytexts extends StatelessWidget {
  const Mytexts({super.key, required this.mytext});

  final String mytext;

  @override
  Widget build(BuildContext context) {
    return Text(mytext);
  }
}
