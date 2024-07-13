import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

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
          
          ))
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              height: 200,
              width: 200,
              'assets/images/bot_happy.png',
              //fit: BoxFit.cover,
              )
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: Column(
                children: [
                  const Text('Introducing AI bot - Miny',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TitilliumWeb',
                  ),
                  ),
                  const Text('Your AI - Powered Pocket Guide to Mindfulness',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'TitilliumWeb', 
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(999)
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(999)
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(999)
                          ),
                        ),
                        const Spacer(),
                        FilledButton( 
                        style: FilledButton.styleFrom(
                                    fixedSize: Size.fromWidth(
                                        MediaQuery.of(context).size.width / 2.5),
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13.0),
                                    ),
                                  ),
                        onPressed: () {
                          
                        },
                        child: const Icon(Icons.arrow_right_outlined),
                      )
                      ],
                    ),
                  )
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