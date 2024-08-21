
import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors.dart';

Widget textBox({
  required bool isPhone,
  required bool isAddress,
  required String label,
  required String hint,
  required IconData prefix,
  required TextEditingController txtController,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      validator: (value) {
        return value!.isEmpty?'This detail is mandatory !':null;
      },
      maxLines: (isAddress)?4:1,
      keyboardType: (isPhone)?TextInputType.phone:TextInputType.text,
      controller: txtController,
      style: TextStyle(
          color: orange, fontWeight: FontWeight.w500, letterSpacing: 1),
      decoration: InputDecoration(
        // icon: Icon(Icons.person),
        prefixIcon: Icon(prefix),
        hintText: hint,
        labelStyle: TextStyle(color: orange),
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: orange,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade700,
            width: 1,
          ),
        ),
      ),
    ),
  );
}
