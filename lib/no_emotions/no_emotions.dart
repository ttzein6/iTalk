import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:textspeech/dashboard/dashboard.dart';
import 'package:textspeech/flutter_tts/flutter_tts.dart';

class NoEmotions extends StatefulWidget {
  const NoEmotions({Key? key}) : super(key: key);
  @override
  State<NoEmotions> createState() => _NoEmotionsState();
}

class _NoEmotionsState extends State<NoEmotions> {
  final FlutterTts flutterTts = FlutterTts();

  void speak(String txt) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(txt);
  }

  String localFilePath = ' ';
  bool isSpeak = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var parser = EmojiParser();
    TextEditingController textFieldController = TextEditingController();
    String message = '';
    // const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

    // AudioPlayer audioPlayer = AudioPlayer();

    // Future _loadFile() async {
    //   final bytes = await readBytes(Uri.parse(kUrl1));
    //   final dir = await getApplicationDocumentsDirectory();
    //   final file = File('${dir.path}/audio.mp3');

    //   await file.writeAsBytes(bytes);
    //   if (file.existsSync()) {
    //     setState(() => localFilePath = file.path);
    //   }
    // }

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('iTalk'),
        backgroundColor: Colors.green.shade200,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const Dashboard()), // this mymainpage is your page to refresh
              (Route<dynamic> route) => false,
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Container(
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(99, 27, 214, 58),
              Color.fromARGB(100, 189, 8, 212),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: textFieldController,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          speak(textFieldController.text);

                          setState(() {
                            textFieldController.text = '';
                            isSpeak = true;
                          });
                          // sleep(Duration(seconds: 2));
                          // setState(() {
                          //   isSpeak = false;
                          // });
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NoEmotions()), // this mymainpage is your page to refresh
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: const Text("Speak"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: width * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //mainAxisSize: MainAxisSize.max,
                        children: [
                          EmojiClick(
                            emojiPath: 'assets/icons/afraid.jpg',
                            text: 'afraid',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/yes.jpg',
                            text: 'yes',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/apple_juice.jpg',
                            text: 'fresh apple juice',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/awake.jpg',
                            text: 'awake',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/bored.jpg',
                            text: 'bored',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/thank_you.jpg',
                            text: 'thank you',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/check_please.jpg',
                            text: 'check please',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //mainAxisSize: MainAxisSize.max,
                        children: [
                          EmojiClick(
                            emojiPath: 'assets/icons/cheese_pizza.jpg',
                            text: 'pizza',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/cold.jpg',
                            text: 'cold',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/confused.jpg',
                            text: 'confused',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/draw.jpg',
                            text: 'draw',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/and.jpg',
                            text: 'and',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/french_fries.jpg',
                            text: 'french fries',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/grape_fruit_juice.jpg',
                            text: 'grape fruit juice',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //mainAxisSize: MainAxisSize.max,
                        children: [
                          EmojiClick(
                            emojiPath: 'assets/icons/i_am.PNG',
                            text: 'i am',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/i_like_it.jpg',
                            text: 'i like it',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/i_love_you.jpg',
                            text: 'i love you',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath:
                                'assets/icons/i_want_a_cup_of_coffee.jpg',
                            text: 'i want a cup of coffee',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/i_want.jpg',
                            text: 'i want',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/mom.jpg',
                            text: 'mom',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                          EmojiClick(
                            emojiPath: 'assets/icons/no.jpg',
                            text: 'no',
                            textEditingController: textFieldController,
                            isSpeak: isSpeak,
                          ),
                          SizedBox(
                            height: width * 0.1,
                          ),
                        ],
                      ),

                      // Column(
                      //   children: [
                      //     Text(
                      //       "Verbs: ",
                      //       style: TextStyle(fontSize: 30),
                      //     ),
                      //     Scrollbar(
                      //       child: ListView.builder(
                      //         padding: EdgeInsets.zero,
                      //         physics: NeverScrollableScrollPhysics(),
                      //         //physics: NeverScrollableScrollPhysics(),
                      //         shrinkWrap: true,
                      //         itemCount: list.length,
                      //         itemBuilder: (context, index) {
                      //           return list[index];
                      //         },
                      //       ),
                      //     ),
                      //   ],
                      // ),

                      // Emoji(
                      //   audioPlayer: audioPlayer,
                      //   em: '🎀',
                      //   audioPath: 'assets/sounds/ribbon.mp3',
                      // ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    ));
  }
}

class EmojiClick extends StatefulWidget {
  var text = ' ';
  String emojiPath = ' ';
  TextEditingController textEditingController;
  bool isSpeak;
  EmojiClick({
    Key? key,
    required this.text,
    required this.emojiPath,
    required this.textEditingController,
    required this.isSpeak,
  }) : super(key: key);

  @override
  State<EmojiClick> createState() => _EmojiClickState();
}

class _EmojiClickState extends State<EmojiClick> {
  bool isClicked = false;
  bool isSpeak = true;

  @override
  Widget build(BuildContext context) {
    void click() {
      widget.textEditingController.text =
          widget.textEditingController.text + widget.text + ' ';
      isClicked = !isClicked;
      setState(() {
        isClicked = true;
      });
    }

    return GestureDetector(
      onTap: () => click(),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.2,
        //height: MediaQuery.of(context).size.width * 0.1,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(),
        //   //color: isClicked ? Colors.white : Colors.transparent,
        // ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage(widget.emojiPath),
            fit: BoxFit.contain,
            alignment: Alignment.center,
            matchTextDirection: true,
          ),
          //SizedBox(height: MediaQuery.of(context).size.width * 0.04),
          Text(widget.text,
              style: const TextStyle(
                fontSize: 14,
              )),
        ]),
      ),
    );
  }
}
// class EmojiClick extends StatefulWidget {
//   var text = ' ';
//   String emoji = ' ';
//   TextEditingController textEditingController;
//   bool isSpeak;
//   EmojiClick({
//     Key? key,
//     required this.text,
//     required this.emoji,
//     required this.textEditingController,
//     required this.isSpeak,
//   }) : super(key: key);

//   @override
//   State<EmojiClick> createState() => _EmojiClickState();
// }

// class _EmojiClickState extends State<EmojiClick> {
//   bool isClicked = false;
//   bool isSpeak = true;

//   @override
//   Widget build(BuildContext context) {
//     void click() {
//       widget.textEditingController.text =
//           widget.textEditingController.text + widget.text + ' ';
//       isClicked = !isClicked;
//       setState(() {
//         isClicked = true;
//       });
//     }

//     return AvatarGlow(
//       endRadius: 40,
//       animate: isClicked && isSpeak,
//       child: GestureDetector(
//         onTap: () => click(),
//         child: Container(
//           // width: MediaQuery.of(context).size.width * 0.1,
//           // height: MediaQuery.of(context).size.width * 0.1,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             //color: isClicked ? Colors.white : Colors.transparent,
//           ),
//           child: Center(
//               child: Column(children: [
//             Text(widget.emoji, style: TextStyle(fontSize: 30)),
//             Text(widget.text, style: TextStyle(fontSize: 20)),
//           ])),
//         ),
//       ),
//     );
//   }
// }

// class Emoji extends StatelessWidget {
//   AudioPlayer audioPlayer;
//   String em;
//   String audioPath;
//   Emoji(
//       {Key? key,
//       required this.audioPlayer,
//       required this.em,
//       required this.audioPath})
//       : super(key: key);

//   playLocal() async {
//     await audioPlayer.play('audio.mp3', isLocal: true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     //var emoji = EmojiParser().info(em);
//     var emoji = EmojiParser().getEmoji(em);
//     return GestureDetector(
//       child: Padding(
//         padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
//         child: Container(
//           decoration: BoxDecoration(
//             //color: Colors.white,
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(
//                 MediaQuery.of(context).size.width * 0.2 * 0.5),
//           ),
//           width: MediaQuery.of(context).size.width * 0.2,
//           height: MediaQuery.of(context).size.width * 0.2,
//           child: Center(
//             child: Text(
//               emoji.code,
//               style: TextStyle(fontSize: 40),
//             ),
//           ),
//         ),
//       ),
//       onTap: () => playLocal(),
//     );
//   }
// }
