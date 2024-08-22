import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/components/text_box.dart';
import 'package:resume_builder/utils/globals.dart';

import '../../../utils/colors.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
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
          'Skills',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: Column(
        children: List.generate(
          skillList.length,
          (index) => Container(
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: textBox(
              isPhone: false,
              isAddress: false,
              label: 'Skill',
              hint: 'Coding',
              prefix: Icons.stacked_bar_chart,
              txtController: skillList[index],
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: orange,
            child: Icon(
              Icons.add,
              color: offWhite,
            ),
            onPressed: () {

              setState(() {
                TextEditingController skill = TextEditingController();
                skillList.add(skill);
              });
            },
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            backgroundColor: orange,
            child: Icon(
              Icons.remove,
              color: offWhite,
            ),
            onPressed: () {
              setState(() {
                if(skillList.length>1)
                {
                  skillList.removeAt(skillList.length-1);
                }
              });
            },
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            backgroundColor: orange,
            child: Icon(
              Icons.arrow_forward,
              color: offWhite,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/lang');
            },
          ),
        ],
      ),
    );
  }
}
