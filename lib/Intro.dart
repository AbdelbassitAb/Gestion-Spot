import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spot_manag/sign_in.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xff1C4E8E),
            ),
            Positioned(
              bottom: 40,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 400,
                  width: size.width,
                  color: Color(0xffF2BC00).withOpacity(0.8),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 400,
                  width: size.width,
                  color: Color(0xffF2BC00).withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              child: ClipPath(
                clipper: MyClipper1(),
                child: Container(
                  height: 400,
                  width: size.width,
                  color: Color(0xffF2BC00),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: MyClipper2(),
                child: Container(
                  height: 170,
                  width: size.width,
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Welcome !',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Nice to see you',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 340,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Center(
                    child: Container(
                      height: 55,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: Center(
                          child: Text(
                        'Login',
                        style:
                            TextStyle(color: Color(0xff1C4E8E), fontSize: 27),
                      )),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/cse1.png',
                  height: 120,
                  width: 120,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2 + 150, 0, size.height - 200);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 20);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2 + 150, size.width, size.height - 150);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
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
    path.moveTo(0, 30);
    path.quadraticBezierTo(size.width / 2, 100, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
