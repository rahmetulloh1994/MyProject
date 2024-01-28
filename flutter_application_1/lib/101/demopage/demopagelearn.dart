import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/image_learn.dart';

class LearnDemoPage extends StatelessWidget {
  const LearnDemoPage({super.key});
  final String _title = "Create Your First Note";
  final String _buttontitle = "Create a Notes";
  final String _description = "Add a note";
  final String _importnotes = "Impot Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPedding,
        child: Column(
          children: [
            PngImage(name: ImageItems().imagebook),
            TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPedding,
              child: SubtitleWidget(title: _description * 10),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeigts.ButtonNormalHeight,
                child: Center(
                    child: Text(
                  _buttontitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                )),
              ),
            ),
            TextButton(onPressed: () {}, child: Text(_importnotes)),
            SizedBox(
              height: ButtonHeigts.ButtonNormalHeight,
            )
          ],
        ),
      ),
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    super.key,
    this.textAlign = TextAlign.center,
    required this.title,
  });

  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.black),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required String title,
  }) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPedding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPedding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeigts {
  static const double ButtonNormalHeight = 50;
}
