import 'package:flutter/material.dart';
import 'package:kbc1/finish.dart';
import 'package:kbc1/first_Screen.dart';
import 'package:kbc1/home.dart';
import 'package:kbc1/lose.dart';
import 'package:kbc1/wonprice.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) =>First_Screen(),
        "start":(context) => Home_Screen(),
        "won":(context) => Won_Price(),
        "finish":(context) => Finish(),
        "lose":(context) => Lose_Game(),
      },
    ),
  );
}