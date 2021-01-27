import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/screens/homepage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
    Duration(seconds: 3),
     () =>
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => HomePage())));
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 350,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset("assets/images/logo.png",width: 80,height: 100,),
              ),
              Text(
                "Todo !",
                style: TextStyle(
                    color: Color(0xFF211551),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Todo, is a simple app to list",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "your task and to check when finished.",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
