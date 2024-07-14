import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmojiiButton extends StatefulWidget {
  final String? imageEmojii;
  final String? animatedEmojii;
  
  const EmojiiButton({
    super.key,
    this.imageEmojii,
    this.animatedEmojii
    });

  @override
  State<EmojiiButton> createState() => _EmojiiButtonState();
}

class _EmojiiButtonState extends State<EmojiiButton> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      borderRadius: BorderRadius.circular(999),
      child: isActive
          ? Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imageEmojii ?? 'assets/emojii/very_sad.png'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(999)),
            )
          : Lottie.network(
              widget.animatedEmojii ?? 'https://fonts.gstatic.com/s/e/notoemoji/latest/1f979/lottie.json',
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
    );
  }
}