import 'package:flutter/material.dart';
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
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon:  Icon(Icons.arrow_back,color: offWhite,)),
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

      body: Column(
        children: [
          Text(txtName.text),
          Text(txtAddress.text),
          Text(txtPhone.text),
          Text(txtEmail.text),
          Text(txtDesignation.text),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: orange,
        child: Icon(
          Icons.arrow_forward,
          color: offWhite,
        ),
        onPressed: () {},
      ),
    );
  }
}
