import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: PngImage(name: ImageItems().imageorange),
          ),
          Image.network("")
        ],
      ),
    );
  }
}

class ImageItems {
  final String imagewithbook = "assets/apple.png";
  final String imageorange = "orange";
  final String imagebook = "book";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(get, fit: BoxFit.contain);
  }

  String get get => "assets/png/$name.png";
}
