import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';
import 'package:mindful_mentor/utils/message_model.dart';
import 'package:mindful_mentor/widgets/app_bar_custom.dart';
import 'package:mindful_mentor/widgets/messages_text_chat_widget.dart';

class ChatMessagesScreen extends StatefulWidget {
  const ChatMessagesScreen({super.key});

  @override
  State<ChatMessagesScreen> createState() => _ChatMessagesScreenState();
}

class _ChatMessagesScreenState extends State<ChatMessagesScreen> {
  //final TextEditingController messageController = TextEditingController();
  //static const apiKey = consts.geminiApiKey;
  //final model = gemini.info(model: 'gemini-1.5-flash', apiKey: apiKey);
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);
  final List<Content> chats = [];

  final List<Message> messagesPrompt = [];
  final bool isPrompt = true;
  final bool isMessageNull = true;

  Future<void> sendMessage() async {
    final message = controller.text;

    setState(() {
      controller.clear();
      messagesPrompt
          .add(Message(isUser: true, message: message, date: DateTime.now()));
    });
    //final content = [gemini.text(message)];
    final response = await gemini.chat(chats).then((value) {
      chats.add(Content(role: 'model', parts: [Parts(text: value?.output)]));
      loading = false;
    });
    setState(() {
      messagesPrompt.add(Message(
          isUser: false, message: response.text ?? "", date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 42.0, left: 12, right: 12, bottom: 15),
          child: AppBarCustom(
            title: 'Chatting with Neo',
            onFirstTap: () {
              Navigator.pop(context);
            },
            onSecondTap: () {},
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: const AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: messagesPrompt.length,
                    itemBuilder: (context, index) {
                      final message = messagesPrompt[index];
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          message.isUser == false
                              ? SizedBox(
                                  width: 50,
                                  height: 50,
                                  child:
                                      Image.asset('assets/images/bot_head.png'),
                                )
                              : const SizedBox(),
                          Messages(
                              isUser: message.isUser,
                              message: message.message,
                              date: DateFormat('HH:mm').format(message.date)),
                          message.isUser == true
                              ? SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/images/user.png'),
                                )
                              : const SizedBox(),
                        ],
                      );
                    })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 15,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      controller: controller,
                      decoration: InputDecoration(
                          fillColor: const Color(0xFF182336),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label: const Text('Enter Your Message')),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    padding: const EdgeInsets.all(12),
                    iconSize: 30,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(const CircleBorder())),
                    onPressed: () {
                      sendMessage();
                      isMessageNull != isMessageNull;
                    },
                    icon: const Icon(Icons.send),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
