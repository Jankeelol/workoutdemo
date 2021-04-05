import 'package:flutter/material.dart';
import 'package:workoutdemo/workoutModels/WorkoutScreen.dart';


screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

screenWcard(context) {
  return screenWidth(context) * 0.45;
}

screenHcard(context) {
  return screenHeight(context) * 0.25;
}

/*
screenWcard(context) {
  return screenWidth(context) * 0.40;
}

screenHcard(context) {
  return screenHeight(context) * 0.27;
}
*/
workoutTextSize(context) {
  return MediaQuery.of(context).size.width / 15;
}

importantMessageTextSize(context) {
  return MediaQuery.of(context).size.width / 17;
}

backButton(context) {
  return //Back button stacked
      Padding(
    padding: EdgeInsets.only(top: 30, left: 10),
    child: FadeAnimation(
        0.5,
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        )),
  );
}


horizontalCardW(context) {
  return screenWidth(context) * 0.92;
}

horizontalCardH(context) {
  return screenHeight(context) * 0.18;
}