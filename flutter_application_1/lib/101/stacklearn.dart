import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/randomimage.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});
  final _cardheigth = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: RandomImage(),
                    bottom: _cardheigth / 2,
                  ),
                  Positioned(
                      height: 50, width: 200, bottom: 0, child: Cardcustom()),
                ],
              )),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}

class Cardcustom extends StatelessWidget {
  const Cardcustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
    );
  }
}
