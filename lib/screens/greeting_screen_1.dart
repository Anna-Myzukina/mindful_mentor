import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindful_mentor/widgets/greeting_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GreetingScreen1 extends StatefulWidget {
  const GreetingScreen1({super.key});

  @override
  State<GreetingScreen1> createState() => _GreetingScreen1State();
}

class _GreetingScreen1State extends State<GreetingScreen1> {
  @override
  Widget build(BuildContext context) {
    return GreetingWidget(
      greetingTitle: 'Introducing AI bot - Miny',
      greetingText: 'Your AI - Powered Pocket Guide to Mindfulness',
      greetingRow: Row(
        children: [
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
              Get.toNamed('/greeting_2');
            },
            child: const Icon(FontAwesomeIcons.arrowRightLong),
          )
        ],
      ),
    );
  }
}
