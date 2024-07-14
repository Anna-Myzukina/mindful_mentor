import 'package:flutter/material.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;

class MoodButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final bool isActive;

  const MoodButton({super.key, this.text, this.onTap, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            border: Border.all(
                color: isActive == true
                    ? consts.neon
                    : const Color.fromARGB(255, 109, 140, 141)),
            borderRadius: BorderRadius.circular(999)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Text(
            text ?? '',
            style: TextStyle(
                color: isActive ? consts.darkBlue : Colors.grey,
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    );
  }
}