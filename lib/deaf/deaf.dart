import 'package:flutter/material.dart';
import 'package:textspeech/speech_screen/speech_screen.dart';
import 'package:textspeech/text_screen/text_screen.dart';

class Deaf extends StatefulWidget {
  const Deaf({Key? key}) : super(key: key);

  @override
  State<Deaf> createState() => _DeafState();
}

class _DeafState extends State<Deaf> {
  late bool _page = false;
  @override
  void initState() {
    _page = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !_page ? Text("Text to speech") : Text('Speech to text'),
        actions: [
          IconButton(
            onPressed: () => setState(
              () => _page = !_page,
            ),
            icon: Icon(Icons.switch_access_shortcut),
          ),
        ],
      ),
      body: _page ? SpeechScreen() : TextToSpeech(),
    );
  }
}
