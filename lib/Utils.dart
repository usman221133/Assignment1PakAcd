import 'dart:async';

import 'package:flutter/material.dart';

setTimeout(Function code,int time){
  Timer timer;
  timer = Timer(Duration(milliseconds: time), (){
    code(timer);
  });
}
