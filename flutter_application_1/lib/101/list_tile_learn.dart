import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/randomimage.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: () {},
                title: RandomImage(),
                subtitle: Text("How to use card"),
                leading: Icon(Icons.money),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
