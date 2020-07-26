import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:spot_manag/widgets/rolling_switch.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.home,
                color: Color(0xff1C4E8E),
                size: 40,
              ),
              Icon(
                Icons.calendar_today,
                color: Color(0xff1C4E8E),
                size: 30,
              ),
              Icon(
                Icons.group,
                color: Color(0xff1C4E8E),
                size: 40,
              ),
              Icon(
                Icons.person,
                color: Color(0xff1C4E8E),
                size: 40,
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xffECEFF1),
        body: SafeArea(
          child: Stack(children: [
            Positioned(
              child: ClipPath(
                clipper: MyClipper2(),
                child: Container(
                  height: 250,
                  width: size.width,
                  color: Color(0xff1C4E8E),
                ),
              ),
            ),
            Positioned(
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 250,
                  width: size.width,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image.asset(
                    'assets/images/text.png',
                    width: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 30, left: 20, right: 30),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/portrait1.jpg'),
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, top: 20),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 60,
                  ),
                )
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 135,
                  ),
                  Text(
                    'Ilhem Bekkar',
                    style: TextStyle(
                        color: Color(0xff1C4E8E),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: new Container(
                      height: 120.0,
                      width: 120.0,
                      child: new CustomPaint(
                        foregroundPainter: new MyPainter(
                            lineColor: Colors.grey.withOpacity(0.5),
                            completeColor: Colors.blueAccent,
                            completePercent: 25,
                            width: 12.0),
                        child: new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Color(0xff1C4E8E),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'People in \n the spot',
                                style: TextStyle(
                                  color: Color(0xff1C4E8E),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Hello Ilham , The spot is',
                    style: TextStyle(
                      color: Color(0xff1C4E8E),
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Available',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You are :    ',
                        style: TextStyle(
                          color: Color(0xff1C4E8E),
                          fontSize: 30,
                        ),
                      ),
                      LiteRollingSwitch1(
//initial value
                        value: false,
                        animationDuration: Duration(milliseconds: 200),
                        textOn: '    In',
                        textOff: 'Out',
                        colorOn: Colors.greenAccent[700],
                        colorOff: Colors.redAccent[700],
                        iconOn: Icons.done,
                        iconOff: Icons.remove_circle_outline,
                        textSize: 25,
                        onChanged: (bool state) {
                          if (state) {
                            showAlertDialog(context);
                          } else {}
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Free people \n in the spot',
                              style: TextStyle(
                                color: Color(0xff1C4E8E),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                  color: Color(0xffF2BC00),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 80,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Color(0xffF2BC00),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Max of people \n in the spot',
                              style: TextStyle(
                                color: Color(0xff1C4E8E),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                  color: Color(0xffF2BC00),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Hi ',
              style: TextStyle(
                  color: Color(0xff1C4E8E),
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'ilhem ',
              style: TextStyle(
                  color: Color(0xffF2BC00),
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'welcome to the spot',
              style: TextStyle(
                  color: Color(0xff1C4E8E),
                  fontSize: 25,
                  fontWeight: FontWeight.bold))
        ]),
      ),
      content: Container(
        child: Column(
          children: <Widget>[
            Text("How much time will you stay in the spot ?"),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
              maxLength: 2, // Only numbers can be entered
            ),
          ],
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 120);
    path.quadraticBezierTo(size.width / 2, size.height + 20, size.width, 120);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 150);
    path.quadraticBezierTo(size.width / 2, size.height - 40, size.width, 150);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyPainter extends CustomPainter {
  Color lineColor;
  Color completeColor;
  double completePercent;
  double width;
  MyPainter(
      {this.lineColor, this.completeColor, this.completePercent, this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Paint line = new Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Paint complete = new Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, line);
    double arcAngle = 2 * pi * (completePercent / 100);
    canvas.drawArc(new Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, complete);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
