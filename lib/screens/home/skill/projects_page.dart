
import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/components/text_box.dart';
import 'package:resume_builder/utils/globals.dart';

import '../../../utils/colors.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
          'Projects',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(projectList.length, (index) =>  Container(
            margin: const EdgeInsets.all(10),
            height: 380,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Text("Project ${index+1}"),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Project Title',
                  hint: 'Chat App with Firebase',
                  prefix: Icons.task_outlined,
                  txtController: projectList[index]['title'],
                ),
                textBox(
                  isPhone: false,
                  isAddress: true,
                  label: 'Description',
                  hint: 'Project Description',
                  prefix: Icons.description_outlined,
                  txtController: projectList[index]['description'],
                ),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Starting From',
                  hint: '10/08/2022',
                  prefix: Icons.date_range,
                  txtController: expList[index]['start'],
                ),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'To Ending',
                  hint: '22/08/2024',
                  prefix: Icons.date_range,
                  txtController: expList[index]['end'],
                ),
              ],
            ),
          ),),
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
                projectList.add({
                  'title' : TextEditingController(),
                  'description' : TextEditingController(),
                  'start' : TextEditingController(),
                  'end' : TextEditingController(),
                });
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
                if(projectList.length>1)
                {
                  projectList.removeAt(projectList.length-1);
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
              Navigator.of(context).pushNamed('/about');
            },
          ),
        ],
      ),
    );
  }
}
