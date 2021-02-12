import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:stock/constants/constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
//FocusNodes
  FocusNode _userNumberFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  //TextEditing controller
  TextEditingController _userNumberTextEditingController =
      TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  //key for form to validate form
  final _signFormKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Form(
          key: _signFormKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Container(
                height: 150.0,
                width: 190.0,
                padding: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                    child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Grace',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00897B))),
                  ),
                  Text('Production',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00897B))),
                ])),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 135),
                      child: Text(
                        'Phone number',
                        style: TextStyle(
                            color: Color(0xFF00897B),
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, top: 5, right: 40, bottom: 5),
                      child: Theme(
                        data: ThemeData(primaryColor: Color(0xFF00897B)),
                        child: TextFormField(
                          focusNode: _userNumberFocusNode,
                          controller: _userNumberTextEditingController,
                          validator: (
                            value,
                          ) {
                            if (value.isEmpty)
                              return 'phone number required';
                            else
                              return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter phone number',
                            hintStyle: TextStyle(
                              fontSize: 10.0,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00897B)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Color(0xFF00897B),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, top: 5, right: 40, bottom: 5),
                    child: Theme(
                      data: ThemeData(primaryColor: Color(0xFF00897B)),
                      child: TextFormField(
                        focusNode: _passwordFocusNode,
                        controller: _passwordTextEditingController,
                        validator: (value) {
                          if (value.isEmpty)
                            return 'password required';
                          else
                            return null;
                        },
                        obscureText: _isObscure,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00897B))),
                          hintText: '******',
                          hintStyle: TextStyle(fontSize: 10),
                          //from inkwell to iconbutton
                          suffixIcon: IconButton(
                              //4rm ontap to onpressed
                              onPressed: () {
                                //callback fn
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                                print(_isObscure);
                              },
                              //child b4
                              icon: Icon(_isObscure
                                  ? FontAwesomeIcons.eye
                                  : FontAwesomeIcons.eyeSlash)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, top: 20),
                child: RaisedButton(
                  padding:
                      EdgeInsets.only(left: 2, top: 15, right: 2, bottom: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Color(0xFF00897B),
                  onPressed: () {
                    Navigator.pushNamed(context, homePage);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
