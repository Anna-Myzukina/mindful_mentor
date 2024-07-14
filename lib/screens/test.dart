// import 'package:flutter/material.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';
// import 'package:mindful_mentor/screens/prompt_from_bot_model.dart';
// import 'package:mindful_mentor/screens/prompt_model.dart'; // Make sure you have this package

// enum MoodFilter { verySad, sad, neutral, happy, veryHappy }

// class GeminiPromptGenerator extends StatefulWidget {
//   const GeminiPromptGenerator({super.key});

//   @override
//   State<GeminiPromptGenerator> createState() => _GeminiPromptGeneratorState();
// }

// class _GeminiPromptGeneratorState extends State<GeminiPromptGenerator> {
//   MoodFilter selectedMood = MoodFilter.neutral;
//   bool isLoading = false; // Add a loading state variable
//   String? generatedResponse;
//   late final GenerativeModel geminiVisionProModel;
//   final List<PromptModel> promptText = [];

//   String generatePrompt(MoodFilter mood) {
//     switch (mood) {
//       case MoodFilter.verySad:
//         return "I understand you are very sad";
//       case MoodFilter.sad:
//         return "I understand you are sad";
//       case MoodFilter.neutral:
//         return "How can I assist you today?";
//       case MoodFilter.happy:
//         return "I'm glad you're in a good mood today. What can I do to make your day even better?";
//       case MoodFilter.veryHappy:
//         return "";
//     }
//   }

//   // Future<String?> callGeminiApi(
//   //   //String mood,
//   //   String prompt,
//   // ) async {
//   // final apiKey =
//   //     String.fromEnvironment('GEMINI_API_KEY', defaultValue: 'key not found');
//   // if (apiKey == 'key not found') {
//   //   throw InvalidApiKey(
//   //     'Key not found in environment. Please add an API key.',
//   //   );
//   // }

//   final model = GenerativeModel(
//     model: 'gemini-1.5-pro',
//     apiKey:
//         String.fromEnvironment('GEMINI_API_KEY', defaultValue: 'key not found'),
//     generationConfig: GenerationConfig(
//       temperature: 0.4,
//       topK: 32,
//       topP: 1,
//       maxOutputTokens: 4096,
//     ),
//     safetySettings: [
//       SafetySetting(HarmCategory.harassment, HarmBlockThreshold.high),
//       SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
//     ],
//   );

//   //const prompt = "How is your mood today?";
//   // final contentFromBot = [
//   //   Content.multi([
//   //     TextPart(
//   //         """Create a post to be used on a Social Media website based on the mood choice.
//   //         The post should include the following $selectedMood.
//   //         There is a strict limit of 500 characters for the description.""")
//   //   ])
//   // ];
//   //  final response = await model.generateContent(content);

//   //   return response.text;
//   // }

//   Future<void> displayGeneratedPrompt() async {
//     final promptGenration = promptGenerationController.text;

//     setState(() {
//       promptGenerationController.clear();
//       promptText.add(PromptModel(promptText: promptGenration));
//     });

//     final content = [Content.text(promptGenration)];
//     final response = await model.generateContent(content);

//     final contentFromBot = [
//       Content.text(
//           """Create a post to be used on a Social Media website based on the mood choice. 
//           The post should include the following $selectedMood. 
//           There is a strict limit of 500 characters for the description.""")
//     ];
//     final responseFromBot = await model.generateContent(contentFromBot);

//     //   return response.text;

//     setState(() {
//       promptText.add(PromptModel(promptText: response.text ?? ""));
//       promptFromBotText.add(PromptFromBot(promptFromBotText: responseFromBot.text ?? ""));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 150.0, left: 16, right: 16),
//       child: Column(
//         children: [
//           Wrap(
//             spacing: 8.0,
//             children: MoodFilter.values.map((mood) {
//               return ChoiceChip(
//                 label: Text(mood.toString().split('.').last),
//                 selected: selectedMood == mood,
//                 onSelected: (isSelected) {
//                   setState(() {
//                     selectedMood = mood;
//                   });
//                 },
//               );
//             }).toList(),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               displayGeneratedPrompt();
//             },
//             // onPressed: () async {
//             //   setState(() {
//             //     isLoading = true;
//             //   });
//             //   String prompt = generatePrompt(selectedMood);
//             //   //generatedResponse = await callGeminiApi(prompt);
//             //   setState(() {
//             //     isLoading = false;
//             //   });
//             // },
//             child: isLoading
//                 ? const CircularProgressIndicator()
//                 : const Text('Generate Prompt'),
//           ),
//           if (generatedResponse != null)
//             Text(
//               generatePrompt(selectedMood),
//               style: TextStyle(fontSize: 21, color: Colors.white),
//             ),
//           Text(
//             promptText.toString(),
//             style: TextStyle(fontSize: 21, color: Colors.white),
//           )
//         ],
//       ),
//     );
//   }
// }
