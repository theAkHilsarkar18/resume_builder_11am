import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import '../model/user_model.dart';

List<User> usersList = [];

// personal detail
TextEditingController txtName = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtAddress = TextEditingController();
TextEditingController txtDesignation = TextEditingController();

// education detail
TextEditingController txtSchoolName = TextEditingController();
TextEditingController txtDegree = TextEditingController();
TextEditingController txtYear = TextEditingController();
TextEditingController txtGrade = TextEditingController();

List l1 = [1];

const String defaultProfileImageUrl = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";


String gender = "Male";

// package --> class object
// 1. create a object and declare variable for File.
ImagePicker imagePicker = ImagePicker();
File? fileImage;