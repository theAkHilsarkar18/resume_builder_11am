import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/home_page.dart';
import 'package:resume_builder/utils/routes.dart';

void main() {
  runApp(const ResumeBuilder());
}

class ResumeBuilder extends StatelessWidget {
  const ResumeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes
    );
  }
}
