import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;

class AppBarCustom extends StatelessWidget {
  final IconData? firstIcon;
  final void Function() onFirstTap;
  final void Function() onSecondTap;
  final IconData? secondIcon;
  final String title;

  const AppBarCustom({
    super.key,
    required this.title,
    this.firstIcon,
    this.secondIcon,
    required this.onFirstTap,
    required this.onSecondTap
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onFirstTap,
          icon: const Icon(FontAwesomeIcons.arrowLeftLong,
          color: consts.white,
          size: 18,
          ),
        ),
        Expanded(
        child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: consts.white,
          fontSize: 18,
          fontFamily: 'TitilliumWeb',
          fontWeight: FontWeight.bold,
          ),
         ),
        ),
        IconButton(
          onPressed: onSecondTap,
          icon: const Icon(FontAwesomeIcons.ellipsis,
          color: consts.white,
          size: 18,
          ),
        ),
      ],
    );
  }
}