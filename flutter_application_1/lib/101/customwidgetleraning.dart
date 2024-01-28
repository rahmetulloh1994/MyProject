import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomWidgetLearning extends StatelessWidget {
  const CustomWidgetLearning({super.key});
  final String title = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  onPressed: () {},
                  title: title,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomFoodButton(
              onPressed: () {},
              title: title,
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  static const EdgeInsets normalPadding = EdgeInsets.all(8.0);
  static const EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(backgroundColor: _ColorUtility().redColor),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility.normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: _ColorUtility().whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
