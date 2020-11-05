import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class SignUpTest extends StatefulWidget {
  @override
  SignUpTestState createState() => SignUpTestState();
}


class SignUpTestState extends State<SignUpTest> {
  bool isLogin;
  bool isLoading;
  bool isLoaded;
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final name = Container(
      width: 250,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        // controller: _emailController,
        validator: (value) {
          if (value.isEmpty) {
            return null;
          }
        },
        obscureText: false,
        maxLines: 1,
        //   style: style,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            filled: true,
            fillColor: Colors.white,
            hintText: "Name",
            hintStyle: TextStyle(fontSize: 14.0, color: Colors.grey, height: 2.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
        ),
      ),
    );
    final mobile = Container(
      width: 250,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        // controller: _emailController,
        validator: (value) {
          if (value.isEmpty) {
            return null;
          }
        },
        obscureText: false,
        maxLines: 1,
        //   style: style,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            filled: true,
            fillColor: Colors.white,
            hintText: "Mobile",
            hintStyle: TextStyle(fontSize: 14.0, color: Colors.grey, height: 2.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
        ),
      ),
    );
    final email = Container(
      width: 250,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        // controller: _emailController,
        validator: (value) {
          if (value.isEmpty) {
            return null;
          }
        },
        obscureText: false,
        maxLines: 1,
        //   style: style,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            filled: true,
            fillColor: Colors.white,
            hintText: "Email",
            hintStyle: TextStyle(fontSize: 14.0, color: Colors.grey, height: 2.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
        ),
      ),
    );
    final signupButton =   RaisedButton(
      onPressed: () async {
      },
      child: Text("Signup with JOBBEE"),
      color: Colors.grey,
      textColor: Colors.white,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Center(
           child: Column(
             children: <Widget>[
               name,
               Padding(padding: EdgeInsets.only(top: 10),),
               mobile,
               Padding(padding: EdgeInsets.only(top: 10),),
               email,
             ],
           ),
         ),

          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Card(
            //color: downArrowTapColor?Colors.blue[600]:Colors.white,
            elevation: 5,
            shape: CircleBorder(
              side: BorderSide(color:Colors.white, width: 1),
              //borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              iconSize: 28,
              // color: Colors.white,
              // onPressed: (){},
              icon: Icon(Icons.arrow_forward,color: Colors.black,),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20),),
          Text("Login",style: TextStyle(fontSize: 20,color: Colors.blue,decoration: TextDecoration.underline,),),

        ],
      ),


    );
  }
  void _showMyDialog(String title, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
                //Text('Please login to continue'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _iconLogin(){
    return Image.asset(
      "images/logo2.png",
      width:100.0,
      height:80.0,
    );
  }

  Widget _titleDescription(){
    return Column(
      children: <Widget>[
        Padding(
          padding:EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Ecommerce 01",
          style:TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top:12.0),
        ),
        Text(
          "Login to continue",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget _textField(){
    return Column(
      children: <Widget>[

        TextFormField(
          controller: email,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width:1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.grey),
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          controller: password,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
          ),
          style: TextStyle(color: Colors.black),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        RaisedButton(
          onPressed: () async {
          },
          child: Text("Login"),
          color: Colors.grey,
          textColor: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        GestureDetector(
            onTap: (){Navigator.pushNamed(context, '/forgot');},
            child:Center(
              child:  Text(
                "I've Forgotten My Password ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),
              ),
            )
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/register');
          },
          child: Text("Register"),
          color: Colors.white,
          textColor: Colors.pink,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Colors.pink)
          ),
        )

      ],
    );
  }
}
