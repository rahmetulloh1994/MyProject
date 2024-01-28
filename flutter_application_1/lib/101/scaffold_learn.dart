import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScaffoldLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------------------------------------------
      appBar: AppBar(
        title: const Text('Scaffold Simple'),
      ),

      //-------------------------------------------------
      body: const Text(
        'data',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.amberAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('data'),
      ),

      drawer: Drawer(),
      //---------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_rounded), label: 'b')
        ],
      ),
    );
  }
}
