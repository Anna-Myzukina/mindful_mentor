import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindful_mentor/widgets/greeting_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GreetingScreen3 extends StatefulWidget {
  const GreetingScreen3({super.key});

  @override
  State<GreetingScreen3> createState() => _GreetingScreen3State();
}

class _GreetingScreen3State extends State<GreetingScreen3> {
  @override
  Widget build(BuildContext context) {
    return GreetingWidget(
      greetingTitle: 'Your everyday - Mood Tracking',
      greetingText: 'Gain insights into your emotional patterns and triggers',
      image: 'assets/images/bot_dance.png',
      greetingRow: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(999)),
          ),
          const SizedBox(width: 5),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(999)),
          ),
          const SizedBox(width: 5),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(999)),
          ),
          const Spacer(),
          FilledButton(
            style: FilledButton.styleFrom(
              fixedSize:
                  Size.fromWidth(MediaQuery.of(context).size.width / 2.5),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
            ),
            onPressed: () {
              Get.toNamed('/home');
            },
            child: const Icon(FontAwesomeIcons.arrowRightLong),
          )
        ],
      ),
    );
  }
}