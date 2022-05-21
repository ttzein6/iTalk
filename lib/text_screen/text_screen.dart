import 'package:flutter/material.dart';
import 'package:textspeech/flutter_tts/flutter_tts.dart';

class TextToSpeech extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();
  final String language = 'en-US';

  TextToSpeech({Key? key}) : super(key: key);
  void speak(String txt) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(txt);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'Text to speak',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextButton(
              onPressed: () => speak(textEditingController.text),
              child: Text("Speak"),
            )
          ],
        ),
      ),
    );
  }
}
