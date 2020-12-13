import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Login Page',
      debugShowCheckedModeBanner: false,
      home: GitHubLoginPage(),
    );
  }
}

class GitHubLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/images/Gitxx.png"),
            height: 80,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Sign in to GitHub",
            style: TextStyle(
                fontSize: 26,
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFF6F8FA),
                border: Border.all(color: Colors.grey[200])),
            padding: EdgeInsets.all(20),
            width: width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username or email address",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 42,
                  child: TextField(
                    showCursor: false,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[300])),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[300])),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1, color: Colors.blueAccent))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 42,
                  child: TextField(
                    showCursor: false,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[300])),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[300])),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1, color: Colors.blueAccent))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: width,
                  height: 40,
                  child: FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Color(0xFF31A44F),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[200], width: 1.5)
            ),
            alignment: Alignment.center,
            height: 60,
            width: width * 0.8,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "New to GitHub? ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      text: "Create an account.",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w400),
                    )
                  ]),
            ),
          ),
        ],
      ),
    )));
  }
}
