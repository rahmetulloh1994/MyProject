import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                child: const Text('data'),
              ),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(
                child: const Text('data'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(20);
}

class _CustomCard extends StatelessWidget {
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  _CustomCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: roundedRectangleBorder,
      margin: ProjectMargins.cardMargin,
      color: Theme.of(context).colorScheme.errorContainer,
      elevation: 100,
      child: child,
    );
  }
}
