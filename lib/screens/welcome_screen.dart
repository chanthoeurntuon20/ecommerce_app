import 'package:ecommerce_app/app_properties.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController email =
      TextEditingController(text: "example@gmail.com");
  TextEditingController password = TextEditingController(text: "123456789");

  Widget welcomeBack() {
    return Text(
      "Welcome Back\n Chanthoeurn Tuon,",
      style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          shadows: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 15),
                offset: Offset(0, 5),
                blurRadius: 10.0)
          ]),
    );
  }

  Widget subTitle() {
    return Padding(
      padding: EdgeInsets.only(right: 56.0),
      child: Text(
        "Login to your account using\n Mobile number",
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Row(
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen()));
              },
              child: Text(
                "Forgot your passowrd? ",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(255, 244, 255, 0.5),
                    fontSize: 14.0),
              )),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "Reset password",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }

  Widget formLogin() {
    return Container(
      height: 240.0,
      child: Stack(
        children: <Widget>[
          Container(
            height: 160.0,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 32.0, right: 12.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.8),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField(
                    controller: email,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField(
                    controller: password,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    obscureText: true,
                  ),
                )
              ],
            ),
          ),
          buttonLogin(),
        ],
      ),
    );
  }

  Widget buttonLogin() {
    return Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          Navigator.of(context).
          push(MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 60.0,
          child: Center(
            child: new Text(
              'Log In',
              style: TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0),
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 150, 60, 1),
                    Color.fromRGBO(255, 140, 70, 1),
                    Color.fromRGBO(255, 130, 80, 1)
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  offset: Offset(0, 5),
                  blurRadius: 10.0,
                )
              ],
              borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
  Widget textRegister(){
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Row(
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen()));
              },
              child: Text(
                "Register Now ",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(255, 244, 255, 0.5),
                    fontSize: 14.0,
                    ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(color: transparentYellow),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(
                  flex: 3,
                ),
                welcomeBack(),
                Spacer(),
                subTitle(),
                Spacer(
                  flex: 2,
                ),
                formLogin(),
                
                textRegister(),
                Spacer(
                  flex: 2,
                ),
                forgotPassword(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
