import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/components/text_box.dart';
import 'package:resume_builder/utils/globals.dart';

import '../../../utils/colors.dart';

class AboutObjectivePage extends StatefulWidget {
  const AboutObjectivePage({super.key});

  @override
  State<AboutObjectivePage> createState() => _AboutObjectivePageState();
}

class _AboutObjectivePageState extends State<AboutObjectivePage> {
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
            )),
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
          'About me & Objective',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textBox(
              isPhone: false,
              isAddress: true,
              label: 'About Me',
              hint: 'Basic information about you ....',
              prefix: Icons.person_outline_outlined,
              txtController: txtAboutMe),
          textBox(
              isPhone: false,
              isAddress: true,
              label: 'Objective',
              hint: 'Why you want to do this job ?',
              prefix: Icons.emoji_objects_outlined,
              txtController: txtObjective),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orange,
        child: Icon(
          Icons.save,
          color: offWhite,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/pdf');
        },
      ),
    );
  }
}
