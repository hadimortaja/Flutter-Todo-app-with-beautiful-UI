import 'package:flutter/material.dart';
import 'package:todo_app/screens/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  TaskCardWidget(
                    title: "Task 1",
                    desc:
                        "Hello User! Welcome to Todo app, this is a default task that you can edit or delete to start using the app.",
                  ),
                  TaskCardWidget()
                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF7349FE)),
                  child: Image(
                    image: AssetImage("assets/images/add_icon.png"),
                  ),
                ),
              )
            ],
          ),
          color: Color(0xFFF6F6F6),
        ),
      ),
    );
  }
}
