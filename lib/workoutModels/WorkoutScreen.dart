import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

//full Screen Of a workout example
class WorkoutScreen extends StatefulWidget {
  WorkoutScreen(
    this.woName,
    this.woDes,
    this.woImage,
  );
  final String woName;
  final String woDes;
  final String woImage;

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    print("Is disposed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.woImage), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomLeft, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.3),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        FadeAnimation(
                            2,
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                      ],
                    ),
                  ],
                ),
                
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            widget.woName,
                            style: TextStyle(
                              fontFamily: 'iOS',
                                color: Colors.white,
                                fontSize: 35,
                                height: 1.2,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          2,
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 75, bottom: 50),
                            child: Text(
                              widget.woDes,
                              style: TextStyle(
                                  fontFamily: 'iOS',
                                  color: Colors.white.withOpacity(.7),
                                  height: 1.9,
                                  fontSize: 15),
                            ),
                          )),
                    ],
                  ),
                )
              ]),
        ),
      ),
    ));
    //next page
  }
}


class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track('opacity').add(Duration(milliseconds: 500), 
      Tween(begin: 0.0, end: 1.0)),
      
      Track('translateY').add(Duration(milliseconds: 500), 
        Tween(begin: 120.0, end: 0.0),
        curve: Curves.easeOut)
    ]);
    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation['opacity'],
        child: Transform.translate(
          offset: Offset(0, animation['translateY']),
          child: child,
        ),
      ),
    );
  }
}