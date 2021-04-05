import 'package:flutter/material.dart';
import 'package:workoutdemo/workoutModels/screenSize.dart';

class WorkoutText extends StatefulWidget {
  WorkoutText(
    this.txt,
  );
  final String txt;

  @override
  _WorkoutTextState createState() => _WorkoutTextState();
}

class _WorkoutTextState extends State<WorkoutText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.txt,
      style: TextStyle(
          //decoration: TextDecoration.underline,
          fontWeight: FontWeight.w200,
          fontSize: screenWidth(context) * 0.08,
          color: Colors.white),
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}