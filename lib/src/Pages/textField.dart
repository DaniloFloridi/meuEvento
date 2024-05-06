// ignore: file_names
import 'dart:html';
import 'dart:js_interop';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  

  final String controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: Colors.white),
            hintText: hintText,
      ),
    );
  }
}
