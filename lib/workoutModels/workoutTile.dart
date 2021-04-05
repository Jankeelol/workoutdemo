import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:workoutdemo/workoutModels/screenSize.dart';

class WorkoutTile extends StatefulWidget {
  WorkoutTile(this.wName, this.sets, this.reps, this.image, this.route);
  final String wName;
  final String sets;
  final String reps;
  final String image;
  final Widget route;

  @override
  _WorkoutTileState createState() => _WorkoutTileState();
}

class _WorkoutTileState extends State<WorkoutTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 5.0),
      child: InkWell(
        child: Container(
          height: 70,
          width: screenWidth(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/playButton.png',
                        image:
                            widget.image,
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      )

                      /*Image.network(
                        //"assets/ExImages/diamondpushup.jpg",
                        widget.image,
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      ),*/
                      ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.wName,
                        style: TextStyle(
                            fontFamily: 'iOS',
                            fontSize: screenWidth(context) * 0.05,
                            color: Colors.white),
                      ),
                      Text(
                        "Sets: " + widget.sets,
                        style: TextStyle(
                            fontFamily: 'iOSlight', color: Colors.white),
                      ),
                      Text(
                        "Reps: " + widget.reps,
                        style: TextStyle(
                            fontFamily: 'iOSlight', color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.route),
          );
        },
      ),
    );
  }
}