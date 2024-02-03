import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/custombutton.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int counter = 0;

  void _increment(bool x) {
    setState(() {
      if (x) {
        ++counter;
      } else {
        --counter;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(mainAxisSize: MainAxisSize.min, children: [
        _incrementMethod(),
        _deincrementMethod(),
      ]),
      body: Column(
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          Placeholder(),
          CustomButton(),
        ],
      ),
    );
  }

  Padding _deincrementMethod() {
    print("|burda");
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _increment(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementMethod() {
    return FloatingActionButton(
      onPressed: () {
        _increment(true);
      },
      child: Icon(Icons.add),
    );
  }
}
