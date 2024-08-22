import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/components/text_box.dart';
import 'package:resume_builder/utils/globals.dart';

import '../../../utils/colors.dart';

class ExpPage extends StatefulWidget {
  const ExpPage({super.key});

  @override
  State<ExpPage> createState() => _ExpPageState();
}

class _ExpPageState extends State<ExpPage> {
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
          'Experience',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(expList.length, (index) =>  Container(
            margin: const EdgeInsets.all(10),
            height: 320,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Text("Experience ${index+1}"),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Company Name',
                  hint: 'Microsoft Inc.',
                  prefix: Icons.apartment,
                  txtController: expList[index]['company'],
                ),
                textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Job Role',
                  hint: 'Project Leader',
                  prefix: Icons.work_outline,
                  txtController: expList[index]['role'],
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
                expList.add({
                  'company' : TextEditingController(),
                  'role' : TextEditingController(),
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
                if(expList.length>1)
                {
                  expList.removeAt(expList.length-1);
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
              Navigator.of(context).pushNamed('');
            },
          ),
        ],
      ),
    );
  }
}


