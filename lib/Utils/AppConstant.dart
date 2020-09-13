import 'package:flutter/material.dart';

const primaryColor = Color(0xFF6C63FF);
const lightColor = Color(0xFF6CECDF);
const gradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF6C63FF), Color(0xFF6C638F)]);

const secondaryColor = Color(0xFF979797);
const textColor = Color(0xFF979797);

const animationDuration = Duration(milliseconds: 200);

List<Map<String, String>> onBoardData = [
  {"text": "Let's have some awesome music", "image": "assets/images/one.png"},
  {"text": "Let's Make Awesome Software", "image": "assets/images/two.png"},
  {"text": "Let's Make Awesome Game also", "image": "assets/images/three.png"},
];
