import 'package:flutter/material.dart';
import 'package:mindful_mentor/widgets/app_bar_custom.dart';

class CalmingScreen extends StatelessWidget {
  const CalmingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 42.0, left: 12, right: 12, bottom: 15),
          child: AppBarCustom(
            title: 'Help with Miny',
            onFirstTap: () {
              Navigator.pop(context);
            },
            onSecondTap: () {},
          ),
        ),
      ),
    );
  }
}
