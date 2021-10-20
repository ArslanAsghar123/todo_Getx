import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/services/getx.dart';

const Color bluishClr = Color(0xff4e5ae8);
const Color yellowClr = Color(0xffffb746);
const Color pinkClr = Color(0xffff4667);
const Color primaryClr = Color(0xff4e5ae8);
const Color darkGreyClr = Color(0xff121212);
const Color darkHeaderClr = Color(0xff424242);

final controller = Get.find<ThemeController>();

TextStyle subHeading(Color color) {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: color,
  ));
}

TextStyle heading(Color color) {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: color,
  ));

}
TextStyle textHeading(Color color) {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 15  ,
    fontWeight: FontWeight.bold,
    color: color,
  ));

}
TextStyle subTitleStyle(Color color) {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 14  ,
    fontWeight: FontWeight.bold,
    color: color,
  ));

}
