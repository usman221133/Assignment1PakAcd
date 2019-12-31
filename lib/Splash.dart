import 'package:flutter/material.dart';
import 'package:pak_acdm/Login.dart';
import 'package:pak_acdm/Utils.dart';


class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    setTimeout((timer){
      timer.cancel();
      Navigator.of(context).push(MaterialPageRoute(builder:(ctx) => Login()));
    }, 2000);

    return Scaffold(

      body: Center(
        child: Image.asset("assets/Pak.png",width: 200,),
    ),
    );
  }

}