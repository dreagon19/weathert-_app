import 'dart:io';

import 'package:clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';



class MyAlert extends StatelessWidget {

  void callLoadingScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LoadingScreen();
    }));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AlertDialog(
            title: Text("Enable your Location"),
            backgroundColor: Color(0xFF9FB8BD) ,
            actions: <Widget>[
              FlatButton(
                child: Text("No"),
                onPressed: () {
                  exit(0);
                },
              ),
              FlatButton(
                child: Text("Yes"),
                onPressed: (){
                  Location().pressedYes();
                  callLoadingScreen(context);
                },
              ),
            ],
            elevation: 24,
          )

        ],
      ),
    );
  }
}

