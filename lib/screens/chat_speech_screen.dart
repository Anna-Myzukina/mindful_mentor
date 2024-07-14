import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;
import 'package:mindful_mentor/widgets/app_bar_custom.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class ChatSpeechScreen extends StatefulWidget {
  const ChatSpeechScreen({super.key});

  @override
  State<ChatSpeechScreen> createState() => _ChatSpeechScreenState();
}

class _ChatSpeechScreenState extends State<ChatSpeechScreen> {
  //bool _isActiveChat = false;
  //bool _isActiveMic = true;
  //bool _isActiveCamera = false;
  late stt.SpeechToText _speech;
  bool isListening = false;
  String neoText =
      "You are not alone. Help is available. Let's talk! 💗 All you need is just to press mic button and talk!";

   void startListening() async {
    if (!isListening) {
      bool available = await _speech.initialize(
      // onStatus: (val) => print('onStatus: $val'),
       // onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            neoText = val.recognizedWords;
          }),
        );
      }
    } else {
      setState(() => isListening = false);
      _speech.stop();
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 42.0, left: 12, right: 12, bottom: 15),
          child: AppBarCustom(
            title: 'Speaking to AI Bot',
            onFirstTap: () {
              Navigator.pop(context);
            },
            onSecondTap: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            //flex: 2,
            child: Image(
              image: AssetImage('assets/images/bot_happy.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Text(
                neoText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'TitilliumWeb',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 7,
              ),
            ),
          ),
          // Expanded(
          //   child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
              // RoundButton(
              //   isActive : _isActiveChat,
              //   onTap: () {
              //     setState(() {
              //       _isActiveChat = !_isActiveChat;
              //     });
              //   },
              //   icon: FontAwesomeIcons.rocketchat,
              // ),
              // RoundButton(
              //   isActive: _isActiveMic,
              //   onTap: () {
              //     setState(() {
              //       _isActiveMic = !_isActiveMic;
              //       startListening();
              //     });
              //   },
              //   icon: FontAwesomeIcons.microphone,
              // ),
              // RoundButton(
              //   isActive: _isActiveCamera,
              //   onTap: () {
              //     setState(() {
              //       _isActiveCamera = !_isActiveCamera;
              //     });
              //   },
              //   icon: FontAwesomeIcons.camera,
              // ),
          //   ],
          // ))
        ],
      ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: AvatarGlow(
            startDelay: const Duration(milliseconds: 1000),
            glowColor: consts.neon,
            glowShape: BoxShape.circle,
            animate: true,
            curve: Curves.fastOutSlowIn,
            child: InkWell(
              borderRadius: BorderRadius.circular(999.0),
              onTap: () {
                startListening();
              },
              child: SizedBox(
                width: 70.0,
                height: 70.0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 999.0,
                  child: Icon(
                    isListening ? FontAwesomeIcons.microphone : FontAwesomeIcons.microphoneSlash,
                    color: Colors.white,
                    size: 30.0
                  ),
                ),
              ),
            )
                    ),
          ),
    );
  }
}
