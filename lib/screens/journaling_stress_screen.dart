import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;
import 'package:mindful_mentor/widgets/app_bar_custom.dart';
import 'package:mindful_mentor/widgets/buttons/button_mood.dart';
import 'package:mindful_mentor/widgets/row_animated_emojii.dart';

class JournalingStressScreen extends StatefulWidget {
  const JournalingStressScreen({super.key});

  @override
  State<JournalingStressScreen> createState() => _JournalingStressScreenState();
}

class _JournalingStressScreenState extends State<JournalingStressScreen> {
  final _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 42.0, left: 12, right: 12, bottom: 15),
          child: AppBarCustom(
            title: 'Journaling stress',
            onFirstTap: () {
              Navigator.pop(context);
            },
            onSecondTap: () {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: RowAnimatedEmojiiWidget(),
            ),
            const Text('What\'s affecting your mood?',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
   
            const SizedBox(
              height: 30,
            ),
            TextField(
              cursorColor: consts.darkBlue,
              controller: _textController,
              maxLines: 2, // Allow for multi-line entries
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: const Color(0xFF101029),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: consts.darkBlue)),
                hintStyle:
                    const TextStyle(color: Color.fromARGB(184, 255, 255, 255)),
                hintText: 'Write about your stress here...',
              ),
            ),
            const SizedBox(height: 26.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/chat_speech');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue
                  ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Analise',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    FontAwesomeIcons.arrowRightLong, 
                    color: Colors.white,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
