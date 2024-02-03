import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  int _sayac = 0;
  void _countUpdate() {
    setState(() {
      ++_sayac;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _countUpdate, child: Text("Merhaba $_sayac"));
  }
}
