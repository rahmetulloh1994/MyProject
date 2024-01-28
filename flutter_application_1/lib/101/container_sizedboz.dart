import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Text('a' * 500),
        ),
        SizedBox.shrink(),
        SizedBox.square(
          dimension: 50,
          child: Text('b' * 50),
        ),
        Container(
          child: Text('a' * 2),
          height: 50,
          constraints: const BoxConstraints(
              maxWidth: 150, minWidth: 100, maxHeight: 100),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                colors: [Colors.black, Colors.amberAccent]),
            boxShadow: const [
              BoxShadow(color: Colors.green, offset: Offset(01, 1))
            ],
          ),
        )
      ]),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    gradient: const LinearGradient(colors: [Colors.black, Colors.amberAccent]),
    boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(01, 1))],
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(30),
          gradient:
              const LinearGradient(colors: [Colors.black, Colors.amberAccent]),
          boxShadow: const [
            BoxShadow(color: Colors.green, offset: Offset(01, 1))
          ],
        );
}
