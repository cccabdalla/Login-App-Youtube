import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(LoginPageDemo());
}

class LoginPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      title: 'Login Page Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool switched = false;

  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.indigo,
                Color(0xFF2A2A72),
              ]
            ),
          ),
          height: _height,
          width: _width,
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
            ),
            margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
            height: _height * 0.7,
            width: _width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hello!!', style: TextStyle(fontSize: 40, color: Colors.indigo, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                    Text('Please Login', style: TextStyle(fontSize: 25, color: Colors.indigo[500], fontWeight: FontWeight.w500), textAlign: TextAlign.left,),
                    SizedBox(height: 30,),
                    TextFormField(
                      cursorColor: Colors.indigo,
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                      decoration: InputDecoration(
                          hintText: 'Please enter your email',
                          hintStyle: TextStyle(color: Colors.indigo, fontSize: 20),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.indigo, fontSize: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.indigo[400])
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.indigo[400])
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Remember me', style: TextStyle(fontSize: 15, color: Colors.indigo[600]),),
                        Switch(
                          value: switched,
                          onChanged: (value){
                            setState(() {
                              switched = value;
                            });
                          },
                          activeColor: Colors.indigo,
                          inactiveTrackColor: Color(0xFFBDD4E7),
                          inactiveThumbColor: Color(0xFF8693AB),
                        )
                      ],
                    ),
                    TextFormField(
                      obscureText: true,
                      cursorColor: Colors.indigo,
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                      decoration: InputDecoration(
                        hintText: 'Please enter your password',
                        hintStyle: TextStyle(color: Colors.indigo, fontSize: 20),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.indigo, fontSize: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.indigo[400])
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.indigo[400])
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(height: 50,
                      width: _width,
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text('Login', style: TextStyle(fontSize: 22, color: Colors.white),),
                        color: Colors.indigo,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 50,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(text: 'Not a member? ', style: TextStyle(fontSize: 16, color: Colors.indigo),
                        children: [
                          TextSpan(text: 'Register!', style: TextStyle(color: Colors.indigo, fontSize: 18, fontWeight: FontWeight.bold))
                        ]
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
