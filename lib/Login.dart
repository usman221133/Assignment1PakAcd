import 'package:pak_acdm/InputField.dart';
import 'package:pak_acdm/Dashboard.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Container(
                width: 250,
                child: Image.asset("assets/pakacd.png"),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InputField("Enter UserName"),
                    InputField("Enter Password"),
                    Container(
                      width: 290,
                      height: 65,
                      child: RaisedButton(

                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder:(ctx) => DashBoard()));
                          },

                          color: Color(0xFF1DBC60),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50.0)))),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Text('Powered by Pakstudents'),
            )
          ],
        ),
      ),
    );
  }
}