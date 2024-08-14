import 'package:flutter/material.dart';
import 'package:resume_builder/model/user_model.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/globals.dart';

import 'components/text_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: offWhite,
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
          'Personal Details',
          style: TextStyle(color: offWhite),
        ),
        backgroundColor: blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: orange,
                      width: 1.5,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(defaultProfileImageUrl),
                  )),
              const SizedBox(
                height: 20,
              ),
              textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Name',
                  hint: 'John Doe',
                  prefix: Icons.person,
                  txtController: txtName),
              textBox(
                  isPhone: false,
                  isAddress: false,

                  label: 'Designation',
                  hint: 'Flutter Developer',
                  prefix: Icons.work,
                  txtController: txtDesignation,),
              textBox(
                  isPhone: false,
                  isAddress: false,

                  label: 'Email',
                  hint: 'yourmail@gmail.com',
                  prefix: Icons.email,
                  txtController: txtEmail),
              textBox(
                  isPhone: true,
                  isAddress: false,

                  label: 'Phone',
                  hint: '9825486060',
                  prefix: Icons.phone,
                  txtController: txtPhone),
              textBox(
                  isPhone: false,
                  isAddress: true,
                  label: 'Address',
                  hint: 'A-107,Apt/Residency,Street,City,State,Pin',
                  prefix: Icons.location_on,
                  txtController: txtAddress),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orange,
        child: Icon(
          Icons.arrow_forward,
          color: offWhite,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/edu');
        },
      ),
    );
  }
}
