import 'package:flutter/material.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;

class GreetingWidget extends StatelessWidget {
  final String? greetingTitle;
  final String? greetingText;
  final Widget? greetingRow;
  final String? image;
  final VoidCallback? onPressed;

  const GreetingWidget(
      {super.key,
      this.greetingTitle,
      this.greetingText,
      this.greetingRow,
      this.image,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/background.png',
                ))),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  height: 200,
                  width: 200,
                  image ?? 'assets/images/bot_happy.png',
                  //fit: BoxFit.cover,
                )),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    color: consts.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        greetingTitle ?? '',
                        style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        greetingText ?? '',
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'TitilliumWeb',
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 26.0, vertical: 18),
                        child: greetingRow)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
