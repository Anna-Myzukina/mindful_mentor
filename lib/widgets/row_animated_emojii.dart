import 'package:flutter/material.dart';
import 'package:mindful_mentor/widgets/buttons/button_emojii.dart';

class RowAnimatedEmojiiWidget extends StatelessWidget {
  const RowAnimatedEmojiiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            EmojiiButton(
              imageEmojii: 'assets/emojii/very_sad.png',
              animatedEmojii: 'https://fonts.gstatic.com/s/e/notoemoji/latest/1f979/lottie.json',
            ),
            EmojiiButton(
              imageEmojii: 'assets/emojii/sad.png',
              animatedEmojii: 'https://lottie.host/34515189-eca2-4a13-8af7-8762d84c7799/g50SftkCeN.json',
            ),
            EmojiiButton(
              imageEmojii: 'assets/emojii/neutral.png',
              animatedEmojii: 'https://fonts.gstatic.com/s/e/notoemoji/latest/1f610/lottie.json',
            ),
            EmojiiButton(
              imageEmojii: 'assets/emojii/happy.png',
              animatedEmojii: 'https://fonts.gstatic.com/s/e/notoemoji/latest/263a_fe0f/lottie.json',
            ),
            EmojiiButton(
              imageEmojii: 'assets/emojii/very_happy.png',
              animatedEmojii: 'https://fonts.gstatic.com/s/e/notoemoji/latest/1f600/lottie.json',
            ),
          
          ],
        ),
      
      ],
    );
  }
}