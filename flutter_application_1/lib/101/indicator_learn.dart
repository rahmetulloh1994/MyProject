import 'package:flutter/material.dart';

class ProgresIndicatorLearn extends StatelessWidget {
  const ProgresIndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterProgressIndicator()],
      ),
      body: Center(
        child: CenterProgressIndicator(),
      ),
    );
  }
}

class CenterProgressIndicator extends StatelessWidget {
  const CenterProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Colors.redAccent,
      strokeWidth: 10,
    );
  }
}
