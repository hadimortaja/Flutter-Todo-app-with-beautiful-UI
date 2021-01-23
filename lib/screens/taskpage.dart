import 'package:flutter/material.dart';
import 'package:todo_app/screens/widgets.dart';

class Taskpage extends StatefulWidget {
  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24,bottom: 6),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Image(
                              image:
                                  AssetImage("assets/images/back_arrow_icon.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter task title",
                                border: InputBorder.none),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF211551)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:12.0),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 24),
                          hintText: "Enter Description for the task ",
                          border: InputBorder.none),
                    ),
                  ),
                  TodoWidget(text: "create new repository",isDone:true ,),
                  TodoWidget(isDone: true,),
                  TodoWidget(text: "create new repository",isDone:true ,),
                  TodoWidget(isDone: false,),
                  TodoWidget(text: "create new repository",isDone:true ,),
                  TodoWidget(isDone: false,),
                  
                  
                ],
              ),
              Positioned(
                  bottom: 24.0,
                  right: 24.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Taskpage()));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFE3577)),
                      child: Image(
                        image: AssetImage("assets/images/delete_icon.png"),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),  
    );
  }
}
