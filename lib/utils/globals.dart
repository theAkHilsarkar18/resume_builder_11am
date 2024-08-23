import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import '../model/user_model.dart';

List<User> usersList = [];

// personal detail
TextEditingController txtName = TextEditingController(text: "John William");
TextEditingController txtEmail =
    TextEditingController(text: "william@gmail.com");
TextEditingController txtPhone = TextEditingController(text: "7896321450");
TextEditingController txtAddress =
    TextEditingController(text: "90 X, Los Angeles,CF, USA");
TextEditingController txtDesignation =
    TextEditingController(text: 'Software Engineer');

// education detail
List eduList = [
  {
    'school': TextEditingController(text: "RK University"),
    'degree': TextEditingController(text: "B.E in CS"),
    'year': TextEditingController(text: "2024"),
    'grade': TextEditingController(text: "8.97"),
  }
];

// skill
TextEditingController txtSkill = TextEditingController(text: "Communication");
List skillList = [txtSkill];

// language
bool isEnglish = false;
String english = '';

bool isHindi = false;
String hindi = '';

bool isGujrati = false;
String gujrati = '';

bool isMarathi = false;
String marathi = '';

// hobbies
bool isReading = false;
String reading = '';

bool isPlaying = false;
String playing = '';

bool isSpeaking = false;
String speaking = '';

bool isLearning = false;
String learning = '';

bool isTravelling = false;
String travelling = '';

bool isLeadership = false;
String leadership = '';


// experience
// education detail
List expList = [
  {
    'company': TextEditingController(text: "Alphabet Inc."),
    'role': TextEditingController(text: "Project Manager"),
    'start': TextEditingController(text: "20/11/2022"),
    'end': TextEditingController(text: "19/03/2024"),
  }
];

// projects
List projectList = [
  {
    'title': TextEditingController(text: "Whatsapp Clone"),
    'description': TextEditingController(text: "I have created whatsapp clone app using firebase in flutter framework where i mentioned many features like send messages and get messages also performed CRUD operation in backend !"),
    'start': TextEditingController(text: "20/11/2022"),
    'end': TextEditingController(text: "19/03/2024"),
  }
];

// about me and objective
TextEditingController txtAboutMe = TextEditingController(text: "I am a highly analytical front-end developer with expertise in HTML, CSS, JavaScript, and various front-end frameworks. I develop dynamic and responsive interfaces that meet client needs. With a deep understanding of front-end development best practices, I am an innovative developer experienced in Angular and React.");
TextEditingController txtObjective = TextEditingController(text: "Manage a simple project and be able to contribute to a more complex project as a team member. Program using one of at least two software languages to develop and evaluate software, hardware infrastructure, and network solutions to meet desired client outcomes.");



const String defaultProfileImageUrl =
    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";

String gender = "Male";

// package --> class object
// 1. create a object and declare variable for File.
ImagePicker imagePicker = ImagePicker();
File? fileImage;
