import 'package:electronic_sebha/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

AppBar appBar({required String title}){
  return  AppBar(
    title: Text(
      title,style: TextStyles.white30,
    ),
    backgroundColor: Colors.blueGrey,elevation: 0,
  );
}