import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:mindful_mentor/widgets/app_bar_custom.dart';
import 'package:mindful_mentor/widgets/choose_emojii_widget.dart';

enum MoodFilter { verySad, sad, neutral, happy, veryHappy }

class GeminiPromptGenerator extends StatefulWidget {
  const GeminiPromptGenerator({super.key});

  @override
  State<GeminiPromptGenerator> createState() => _GeminiPromptGeneratorState();
}

class _GeminiPromptGeneratorState extends State<GeminiPromptGenerator> {
  MoodFilter selectedMood = MoodFilter.neutral;
  bool isLoading = false; 
  bool isGeneratedPrompt = false;// Add a loading state variable
  String? generatedResponse;
  String result = '';
  final gemini = Gemini.instance;

  //late final GenerativeModel geminiVisionProModel;
  // final List<PromptModel> promptText = [];

  String generatePrompt(MoodFilter mood) {
    switch (mood) {
      case MoodFilter.verySad:
        return result = "I understand you are very sad";
      case MoodFilter.sad:
        return result = "I understand you are sad";
      case MoodFilter.neutral:
        return result = "How can I assist you today?";
      case MoodFilter.happy:
        return result =
            "I'm glad you're in a good mood today. What can I do to make your day even better?";
      case MoodFilter.veryHappy:
        return result = "I'm so happy for you";
    }
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
            title: 'Mood control',
            onFirstTap: () {
              Navigator.pop(context);
            },
            onSecondTap: () {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 16, right: 16),
        child: Column(
          children: [
            const ChooseEmojiiWidget(),
            // Wrap(
            //   spacing: 8.0,
            //   children: MoodFilter.values.map((mood) {
            //     return ChoiceChip(
            //       label: Text(mood.toString().split('.').last),
            //       selected: selectedMood == mood,
            //       onSelected: (isSelected) {
            //         setState(() {
            //           selectedMood = mood;
            //         });
            //       },
            //     );
            //   }).toList(),
            // ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
               style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue
                    ),
                ),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                  isGeneratedPrompt = true;
                  gemini.streamGenerateContent(result);
                });
                //String prompt = generatePrompt(selectedMood);
                //generatedResponse = await callGeminiApi(prompt);
                setState(() {
                  isLoading = false;
                });
              },
              child: isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Generate Prompt', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
            ),
            isGeneratedPrompt
            ? Text(result, style: const TextStyle(fontSize: 21, color: Colors.white),)
            : Text(
              generatePrompt(selectedMood),
              //generatedResponse = null;
              //result = null;
              style: const TextStyle(fontSize: 21, color: Colors.white),
            ), // Display generatedResponse
          ],
        ),
      ),
    );
  }
}
