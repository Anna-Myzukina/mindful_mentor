import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindful_mentor/widgets/greeting_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GreetingScreen2 extends StatefulWidget {
  const GreetingScreen2({super.key});

  @override
  State<GreetingScreen2> createState() => _GreetingScreen2State();
}

class _GreetingScreen2State extends State<GreetingScreen2> {
 @override
  Widget build(BuildContext context) {
   return GreetingWidget(
      greetingTitle: 'Personalized Calm Corner',
      greetingText: ' Discover a curated selection of calming techniques based on your mood',
      image: 'assets/images/bot_arms.png',
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
                color: Colors.blue, borderRadius: BorderRadius.circular(999)),
          ),
          const SizedBox(width: 5),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(999)),
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
              Get.toNamed('/greeting_3');
            },
            child: const Icon(FontAwesomeIcons.arrowRightLong),
          )
        ],
      ),
    );
  }
}