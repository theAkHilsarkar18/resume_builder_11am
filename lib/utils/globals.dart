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


const String defaultProfileImageUrl =
    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";

String gender = "Male";

// package --> class object
// 1. create a object and declare variable for File.
ImagePicker imagePicker = ImagePicker();
File? fileImage;
