import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text('a'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('data'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ac_unit_sharp),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('data'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('data'),
            ),
            Container(
              height: 200,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Padding(
                child: Text(
                  'Place Bid',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: Colors.white),
                ),
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
