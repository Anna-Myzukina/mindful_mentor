import 'package:flutter/material.dart';
import 'package:mindful_mentor/widgets/buttons/button_mood.dart';

class ChooseEmojiiWidget extends StatefulWidget {
  const ChooseEmojiiWidget({super.key});

  @override
  State<ChooseEmojiiWidget> createState() => _ChooseEmojiiWidgetState();
}

class _ChooseEmojiiWidgetState extends State<ChooseEmojiiWidget> {
    bool isActiveWork = false;

    bool isActiveExercise = false;

    bool isActiveFamily = false;

    bool isActiveHobbies = false;

    bool isActiveFinance = false;

    bool isActiveSleep = false;

    bool isActiveDrink = false;

    bool isActiveFood = false;

    bool isActiveRelationship = false;

    bool isActiveEducation = false;

    bool isActiveWeather = false;

    bool isActiveMusic = false;

    bool isActiveTravel = false;

    bool isActiveHealth = false;

    bool isActiveNews = false;

  @override
  Widget build(BuildContext context) {
    return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('How are you feeling?',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MoodButton(
                      text: 'Work',
                      isActive: isActiveWork,
                      onTap: () {
                        setState(() {
                          isActiveWork = !isActiveWork;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Exercise',
                      isActive: isActiveExercise,
                      onTap: () {
                        setState(() {
                          isActiveExercise = !isActiveExercise;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Family',
                      isActive: isActiveFamily,
                      onTap: () {
                        setState(() {
                          isActiveFamily = !isActiveFamily;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MoodButton(
                      text: 'Hobbies',
                      isActive: isActiveHobbies,
                      onTap: () {
                        setState(() {
                          isActiveHobbies = !isActiveHobbies;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Finances',
                      isActive: isActiveFinance,
                      onTap: () {
                        setState(() {
                          isActiveFinance = !isActiveFinance;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Sleep',
                      isActive: isActiveSleep,
                      onTap: () {
                        setState(() {
                          isActiveSleep = !isActiveSleep;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MoodButton(
                      text: 'Drink',
                      isActive: isActiveDrink,
                      onTap: () {
                        setState(() {
                          isActiveDrink = !isActiveDrink;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Food',
                      isActive: isActiveFood,
                      onTap: () {
                        setState(() {
                          isActiveFood = !isActiveFood;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Relationship',
                      isActive: isActiveRelationship,
                      onTap: () {
                        setState(() {
                          isActiveRelationship = !isActiveRelationship;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MoodButton(
                      text: 'Education',
                      isActive: isActiveEducation,
                      onTap: () {
                        setState(() {
                          isActiveEducation = !isActiveEducation;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Weather',
                      isActive: isActiveWeather,
                      onTap: () {
                        setState(() {
                          isActiveWeather = !isActiveWeather;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Music',
                      isActive: isActiveMusic,
                      onTap: () {
                        setState(() {
                          isActiveMusic = !isActiveMusic;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MoodButton(
                      text: 'Travel',
                      isActive: isActiveTravel,
                      onTap: () {
                        setState(() {
                          isActiveTravel = !isActiveTravel;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'Health',
                      isActive: isActiveHealth,
                      onTap: () {
                        setState(() {
                          isActiveHealth = !isActiveHealth;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MoodButton(
                      text: 'News',
                      isActive: isActiveNews,
                      onTap: () {
                        setState(() {
                          isActiveNews = !isActiveNews;
                        });
                      },
                    )
                  ],
                )
              ],
            );
  }
}