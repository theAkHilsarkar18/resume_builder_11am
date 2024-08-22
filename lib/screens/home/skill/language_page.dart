import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/components/text_box.dart';
import 'package:resume_builder/utils/globals.dart';

import '../../../utils/colors.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: offWhite,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: offWhite,
            ),
          ),
        ],
        title: Text(
          'Languages & Hobbies',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text('English'),
            value: isEnglish, onChanged: (value) {
              setState(() {
                isEnglish = value!;
                english = isEnglish ? "English" : '';
              });
          },),
          CheckboxListTile(
            title: const Text('Hindi'),
            value: isHindi, onChanged: (value) {
            setState(() {
              isHindi = value!;
              hindi = isHindi ? "Hindi" : '';
            });
          },),
          CheckboxListTile(
            title: const Text('Gujrati'),
            value: isGujrati, onChanged: (value) {
            setState(() {
              isGujrati = value!;
              gujrati = isGujrati ? "Gujrati" : '';
            });
          },),
          CheckboxListTile(
            title: const Text('Marathi'),
            value: isMarathi, onChanged: (value) {
            setState(() {
              isMarathi = value!;
              marathi = isMarathi ? "Marathi" : '';
            });
          },),
          const Divider(),
          SwitchListTile(
            title: const Text('Reading'),
            value: isReading, onChanged: (value) {
              setState(() {
                isReading = value;
                reading = isReading ? "Reading" : '';
              });
          },),
          SwitchListTile(
            title: const Text('Learning'),
            value: isLearning, onChanged: (value) {
            setState(() {
              isLearning = value;
              learning = isLearning ? "Learning" : '';
            });
          },),
          SwitchListTile(
            title: const Text('Travelling'),
            value: isTravelling, onChanged: (value) {
            setState(() {
              isTravelling = value;
              travelling = isTravelling ? "Travelling" : '';
            });
          },),
          SwitchListTile(
            title: const Text('Playing'),
            value: isPlaying, onChanged: (value) {
            setState(() {
              isPlaying = value;
              playing = isPlaying ? "Playing" : '';
            });
          },),
          SwitchListTile(
            title: const Text('Public Speaking'),
            value: isSpeaking, onChanged: (value) {
            setState(() {
              isSpeaking = value;
              speaking = isSpeaking ? "Public Speaking" : '';
            });
          },),
          SwitchListTile(
            title: const Text('Leadership'),
            value: isLeadership, onChanged: (value) {
            setState(() {
              isLeadership = value;
              leadership = isLeadership  ? "Leadership" : '';
            });
          },),

        ]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orange,
        child: Icon(
          Icons.arrow_forward,
          color: offWhite,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/exp');
        },
      ),
    );
  }
}
