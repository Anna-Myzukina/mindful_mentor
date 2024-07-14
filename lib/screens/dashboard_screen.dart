import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mindful_mentor/widgets/small_card_widget.dart';
import 'package:mindful_mentor/widgets/week_row_widgt.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            padding: const EdgeInsets.only(bottom: 18),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Color.fromARGB(44, 128, 188, 231)),
            child: Padding(
              padding: const EdgeInsets.only(top: 42.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/user.png'),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Hi, Anna!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF61d6e4),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'TitilliumWeb',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(999)),
                    child: const Icon(FontAwesomeIcons.bell),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          FontAwesomeIcons.calendar,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'July 2024',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontFamily: 'TitilliumWeb',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const WeekRowWidget(),
                    const SizedBox(height: 20),
                    const Text(
                      'Please select an option:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        SmallCard(
                          icon: FontAwesomeIcons.pen,
                          title: 'Chat with Miny',
                          onTap: () {
                            Get.toNamed('/chat');
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SmallCard(
                          icon: FontAwesomeIcons.microphone,
                          title: 'Talk with Miny',
                          onTap: () {
                            Get.toNamed('/chat_speech');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SmallCard(
                          icon: FontAwesomeIcons.faceSmileWink,
                          title: 'Quick mood assessment with Miny',
                          onTap: () {
                            Get.toNamed('/mood');
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SmallCard(
                          icon: FontAwesomeIcons.heartPulse,
                          title: 'Select your preferred calming methods',
                          onTap: () => Get.toNamed('/calming_screen'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SmallCard(
                          icon: FontAwesomeIcons.bookOpen,
                          title: 'Journaling stress',
                          onTap: () {
                            Get.toNamed('/journaling_stress');
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SmallCard(
                          icon: FontAwesomeIcons.listCheck,
                          title: 'Gratitude Exercises',
                          onTap: () {
                            Get.toNamed('/gratitude_exercises');
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          ],
        )
     );
  }
}
