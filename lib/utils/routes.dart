import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home/education/education_page.dart';
import 'package:resume_builder/screens/home/skill/exp_page.dart';
import 'package:resume_builder/screens/home/skill/language_page.dart';
import 'package:resume_builder/screens/home/skill/skill_page.dart';
import '../screens/home/home_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/': (context) => const HomePage(),
  '/edu': (context) =>  const EducationPage(),
  '/skill': (context) =>  const SkillPage(),
  '/lang': (context) =>  const LanguagePage(),
  '/exp': (context) =>  const ExpPage(),
};


// invoice generator - bill
// E-com - admin
// 1. splash screen
// 2. home page : show all products using list tile.
//    -> list tile trailing : add to cart
//    -> same product cant be add twice in cart list - set
//    -> products - name,price,id,qty=1,category,discount,isAdded,
//    -> category wise filter

// 3. cart page
//    -> cart list view
//    -> give button for increase qty.
//    -> checkout-->

// 4. Customer Detail

// 5. PDF

// 6. SAVE & SHARE
