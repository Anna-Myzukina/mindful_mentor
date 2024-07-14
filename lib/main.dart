import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';
import 'package:mindful_mentor/screens/calming_screen.dart';
import 'package:mindful_mentor/screens/chat_messages_screen.dart';
import 'package:mindful_mentor/screens/chat_speech_screen.dart';
import 'package:mindful_mentor/screens/gratitude_exercises.dart';
import 'package:mindful_mentor/screens/greening_screen_3.dart';
import 'package:mindful_mentor/screens/greeting_screen_1.dart';
import 'package:mindful_mentor/screens/greeting_screen_2.dart';
import 'package:mindful_mentor/screens/home_screen.dart';
import 'package:mindful_mentor/screens/journaling_stress_screen.dart';
import 'package:mindful_mentor/screens/mood_assesment_screen.dart';
import 'package:mindful_mentor/screens/prompt_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;


void main() {
  /// flutter run --dart-define=GEMINI_API_KEY=$GEMINI_API_KEY
  Gemini.init(
    apiKey: const String.fromEnvironment('GEMINI_API_KEY', defaultValue: 'key not found')
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        defaultTransition: Transition.fadeIn,
        debugShowCheckedModeBanner: false,
        title: 'Mindful mentor bot - Miny',
        theme: ThemeData(
          scaffoldBackgroundColor: consts.scaffoldBackgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/greeting_1', 
            page: () => const GreetingScreen1()
          ),
          GetPage(
            name: '/greeting_2', 
            page: () => const GreetingScreen2()
          ),
          GetPage(
            name: '/greeting_3', 
            page: () => const GreetingScreen3()
          ),
          GetPage(
            name: '/home', 
            page: () => const HomeScreen()
          ),
          GetPage(name: '/gemini_prompt_generator', page: () => const GeminiPromptGenerator()
          ),
           GetPage(
            name: '/chat', 
            page: () => const ChatMessagesScreen()
          ),
           GetPage(
            name: '/chat_speech', 
            page: () => const ChatSpeechScreen()
          ),
           GetPage(
            name: '/mood', 
            page: () => const MoodAssesmentScreen()
          ),
           GetPage(
            name: '/calming_screen', 
            page: () => const CalmingScreen()
          ),
           GetPage(
            name: '/journaling_stress', 
            page: () => const JournalingStressScreen()
          ),
           GetPage(
            name: '/gratitude_exercises', 
            page: () => const GratitudeExercisesScreen()
          ),
        ],
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: 'assets/images/bot_happy.png',
            nextScreen: const GreetingScreen1(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.leftToRight,
            backgroundColor: consts.scaffoldBackgroundColor),
      );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';

// void main() {
//   runApp(const GenerativeAISample());
// }

// class GenerativeAISample extends StatelessWidget {
//   const GenerativeAISample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter + Generative AI',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           brightness: Brightness.dark,
//           seedColor: const Color.fromARGB(255, 171, 222, 244),
//         ),
//         useMaterial3: true,
//       ),
//       home: const ChatScreen(title: 'Flutter + Generative AI'),
//     );
//   }
// }

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key, required this.title});

//   final String title;

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: const ChatWidget(),
//     );
//   }
// }

// class ChatWidget extends StatefulWidget {
//   const ChatWidget({super.key});

//   @override
//   State<ChatWidget> createState() => _ChatWidgetState();
// }

// class _ChatWidgetState extends State<ChatWidget> {
//   late final GenerativeModel _model;
//   late final ChatSession _chat;
//   final ScrollController _scrollController = ScrollController();
//   final TextEditingController _textController = TextEditingController();
//   final FocusNode _textFieldFocus = FocusNode();
//   bool _loading = false;
//   static const _apiKey = String.fromEnvironment('GEMINI_API_KEY');

//   @override
//   void initState() {
//     super.initState();
//     _model = GenerativeModel(
//       model: 'gemini-pro',
//       apiKey: _apiKey,
//     );
//     _chat = _model.startChat();
//   }

//   void _scrollDown() {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => _scrollController.animateTo(
//         _scrollController.position.maxScrollExtent,
//         duration: const Duration(
//           milliseconds: 750,
//         ),
//         curve: Curves.easeOutCirc,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     var textFieldDecoration = InputDecoration(
//       contentPadding: const EdgeInsets.all(15),
//       hintText: 'Enter a prompt...',
//       border: OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           Radius.circular(14),
//         ),
//         borderSide: BorderSide(
//           color: Theme.of(context).colorScheme.secondary,
//         ),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           Radius.circular(14),
//         ),
//         borderSide: BorderSide(
//           color: Theme.of(context).colorScheme.secondary,
//         ),
//       ),
//     );

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: _apiKey.isNotEmpty
//                 ? ListView.builder(
//                     controller: _scrollController,
//                     itemBuilder: (context, idx) {
//                       var content = _chat.history.toList()[idx];
//                       var text = content.parts
//                           .whereType<TextPart>()
//                           .map<String>((e) => e.text)
//                           .join('');
//                       return MessageWidget(
//                         text: text,
//                         isFromUser: content.role == 'user',
//                       );
//                     },
//                     itemCount: _chat.history.length,
//                   )
//                 : ListView(
//                     children: const [
//                       Text('No API key found. Please provide an API Key.'),
//                     ],
//                   ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 25,
//               horizontal: 15,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     autofocus: true,
//                     focusNode: _textFieldFocus,
//                     decoration: textFieldDecoration,
//                     controller: _textController,
//                     onSubmitted: (String value) {
//                       _sendChatMessage(value);
//                     },
//                   ),
//                 ),
//                 const SizedBox.square(
//                   dimension: 15,
//                 ),
//                 if (!_loading)
//                   IconButton(
//                     onPressed: () async {
//                       _sendChatMessage(_textController.text);
//                     },
//                     icon: Icon(
//                       Icons.send,
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                   )
//                 else
//                   const CircularProgressIndicator(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _sendChatMessage(String message) async {
//     setState(() {
//       _loading = true;
//     });

//     try {
//       var response = await _chat.sendMessage(
//         Content.text(message),
//       );
//       var text = response.text;

//       if (text == null) {
//         _showError('No response from API.');
//         return;
//       } else {
//         setState(() {
//           _loading = false;
//           _scrollDown();
//         });
//       }
//     } catch (e) {
//       _showError(e.toString());
//       setState(() {
//         _loading = false;
//       });
//     } finally {
//       _textController.clear();
//       setState(() {
//         _loading = false;
//       });
//       _textFieldFocus.requestFocus();
//     }
//   }

//   void _showError(String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Something went wrong'),
//           content: SingleChildScrollView(
//             child: SelectableText(message),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('OK'),
//             )
//           ],
//         );
//       },
//     );
//   }
// }

// class MessageWidget extends StatelessWidget {
//   final String text;
//   final bool isFromUser;

//   const MessageWidget({
//     super.key,
//     required this.text,
//     required this.isFromUser,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment:
//           isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
//       children: [
//         Flexible(
//           child: Container(
//             constraints: const BoxConstraints(maxWidth: 600),
//             decoration: BoxDecoration(
//               color: isFromUser
//                   ? Theme.of(context).colorScheme.primaryContainer
//                   : Theme.of(context).colorScheme.surfaceVariant,
//               borderRadius: BorderRadius.circular(18),
//             ),
//             padding: const EdgeInsets.symmetric(
//               vertical: 15,
//               horizontal: 20,
//             ),
//             margin: const EdgeInsets.only(bottom: 8),
//             child: MarkdownBody(
//               selectable: true,
//               data: text,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }