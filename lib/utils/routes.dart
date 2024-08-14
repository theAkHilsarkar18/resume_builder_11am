import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/education/education_page.dart';
import '../screens/home/home_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/': (context) => const HomePage(),
  '/edu': (context) =>  const EducationPage(),
};
