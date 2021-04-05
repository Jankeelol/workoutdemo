import 'package:flutter/material.dart';
import 'package:workoutdemo/workoutModels/WorkoutScreen.dart';
import 'package:workoutdemo/workoutModels/WorkoutStrings.dart';
import 'package:workoutdemo/workoutModels/workoutText.dart';
import 'package:workoutdemo/workoutModels/workoutTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:DemoPage(),
    );
  }
}


class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [Colors.black87, Colors.black])),
        ),
        ListView(
          children: <Widget>[
            

            SizedBox(height: 15),
            //Next Workout
            WorkoutText("Warm Up"),
            padding(context),
            WorkoutTile("Jumping Jacks", "1", "30", jumpingJack,
                WorkoutScreen("Jumping Jacks", "", jumpingJack)),
            padding(context),
            WorkoutTile("Arm Circles", "1", "15", armCircle,
                WorkoutScreen("Arm Circles", "", armCircle)),
            padding(context),
            WorkoutTile("Walkouts", "1", "15", walkouts,
                WorkoutScreen("Walkouts", "", walkouts)),
            padding(context),
            WorkoutText("Workout"),
            padding(context),
            WorkoutTile("Push Ups", "4", "20", pushUps,
                WorkoutScreen("Push Ups", "", pushUps)),
            padding(context),
            WorkoutTile("Diamond Push Ups", "4", "20", diamondPushup,
                WorkoutScreen("Diamond Push Ups", "", diamondPushup)),
            padding(context),
            
            padding(context),
            WorkoutTile("Preacher Curl", "5", "15", preacherCurl,
                WorkoutScreen("Preacher Curl", "", preacherCurl)),
            padding(context),
            WorkoutTile("Reverse Curl", "5", "15", reverseCurl,
                WorkoutScreen("Reverse Curl", "", reverseCurl)),
            padding(context),
            WorkoutTile("Overhead Press", "2", "10", overheadPress,
                WorkoutScreen("Overhead Press", "", overheadPress)),
            padding(context),
            WorkoutTile("Tricep Kickback", "2", "30", tricepsKickback,
                WorkoutScreen("Tricep Kickback", "", tricepsKickback)),
            padding(context),
            WorkoutText("Rest"),
            padding(context),
            WorkoutTile("Push Ups", "4", "20", pushUps,
                WorkoutScreen("Push Ups", "", pushUps)),
            padding(context),
            WorkoutTile("Diamond Push Ups", "4", "20", diamondPushup,
                WorkoutScreen("Diamond Push Ups", "", diamondPushup)),
            padding(context),
            WorkoutTile("Tricep Kickback", "2", "30", tricepsKickback,
                WorkoutScreen("Tricep Kickback", "", tricepsKickback)),
            padding(context),
            WorkoutText("Max Set"),
            padding(context),
            WorkoutTile("Push Ups", "1", "Max", pushUps,
                WorkoutScreen("Push Ups", "", pushUps)),
            padding(context),
            WorkoutTile("Tricep Kickbacks", "1", "Max", tricepsKickback,
                WorkoutScreen("Tricep Kickback", "", tricepsKickback)),
            padding(context),
            WorkoutTile("Bicep Curls", "1", "Max", bicepCurls,
                WorkoutScreen("Bicep Curls", "", bicepCurls)),
            padding(context),
          ],
        ),
        //Back button stacked
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: FadeAnimation(
              1,
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
        )
      ],
    ));
  }
}

padding(context){
  return Divider(color:Colors.white);
}