import 'package:flutter/material.dart';
import 'package:spot_manag/home.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Hello there !',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff1C4E8E),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  style: TextStyle(color: Color(0xff1C4E8E), fontSize: 25),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff1C4E8E),
                    ),
                    hintText: 'Email',
                    hintStyle:
                        TextStyle(color: Color(0xff1C4E8E), fontSize: 20),
                    fillColor: Colors.grey.withOpacity(0.3),
                    focusColor: Colors.grey.withOpacity(0.3),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xff1C4E8E),
                          width: 2.0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xff1C4E8E),
                          width: 2.0,
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Color(0xff1C4E8E), fontSize: 25),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff1C4E8E),
                    ),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: Color(0xff1C4E8E), fontSize: 20),
                    fillColor: Colors.grey.withOpacity(0.3),
                    focusColor: Colors.grey.withOpacity(0.3),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xff1C4E8E),
                          width: 2.0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xff1C4E8E),
                          width: 2.0,
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: Text(
                    'Need help ?',
                    style: TextStyle(
                      color: Color(0xff1C4E8E),
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Center(
                    child: Container(
                      height: 55,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color(0xffF2BC00),
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
                Center(
                  child: Image.asset(
                    'assets/images/cse1.png',
                    height: 120,
                    width: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
