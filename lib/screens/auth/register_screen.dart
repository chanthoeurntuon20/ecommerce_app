
import 'package:ecommerce_app/app_properties.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterScreen> {
  TextEditingController email =
      TextEditingController(text: 'example@email.com');

  TextEditingController password = TextEditingController(text: '12345678');

  TextEditingController cmfPassword = TextEditingController(text: '12345678');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: transparentYellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Spacer(flex: 3),
                title(),
                 Spacer(),
                 subTitle(),
                Spacer(flex:2),
                registerForm(),
                Spacer(flex:2),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: socialRegister()),
              ],
            ),
            ),
        ],
      ),
    );
  }
  Widget title(){
    return Text(
      'Glad to Meet You',
      style: TextStyle(
        color: Colors.white,
        fontSize: 34.0,
        fontWeight: FontWeight.bold,
        shadows: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            offset: Offset(0,5),
          )
        ]
      ),
    );
    
  }
  Widget registerForm() {
    return Container(
      height: 300,
      child: Stack(
        children: <Widget>[
          Container(
            height: 220,
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
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField(
                    controller: cmfPassword,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    obscureText: true,
                  ),
                ),
                 
              ],
            ),
          ),
         registerButton(),
        ],
      ),
    );
  }
  Widget registerButton(){
    return Positioned(
      left: MediaQuery.of(context).size.width / 4,
      bottom: 40,
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => WelcomeScreen()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 80,
          child: Center(
              child: new Text("Register",
                  style: const TextStyle(
                      color: const Color(0xfffefefe),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0))),
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
    Widget subTitle(){
      return Padding(
          padding: const EdgeInsets.only(right: 56.0),
          child: Text(
            'Create your new account for future uses.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
    ));
  } 
  Widget socialRegister(){
    return Column(
      children: <Widget>[
        Text(
          'You can sign in with',
          style: TextStyle(
            fontSize: 12.0,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.facebook),
              color: Colors.white,),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.phone),
              color: Colors.white,),
          ],
        )
      ],
    );
  }
}