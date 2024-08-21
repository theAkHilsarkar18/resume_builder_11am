import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/components/text_box.dart';
import 'package:resume_builder/utils/globals.dart';

import '../../../utils/colors.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
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
          'Education Details',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(l1.length, (index) =>  Container(
            margin: const EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'University/School',
                  hint: 'RK University',
                  prefix: Icons.school,
                  txtController: txtSchoolName,
                ),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Degree or Course',
                  hint: 'B.E in CS',
                  prefix: Icons.workspace_premium,
                  txtController: txtDegree,
                ),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Grade or Percentage',
                  hint: '8.9 SGPA',
                  prefix: Icons.percent,
                  txtController: txtGrade,
                ),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Completed Year',
                  hint: '2024',
                  prefix: Icons.date_range_outlined,
                  txtController: txtYear,
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
                l1.add(2);
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
