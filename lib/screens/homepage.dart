import 'package:flutter/material.dart';
import 'package:todo_app/DB/database_helper.dart';
import 'package:todo_app/animation/fadeanimation.dart';
import 'package:todo_app/screens/taskpage.dart';
import 'package:todo_app/screens/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DatabaseHelper _dbHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 32, top: 32),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      initialData: [],
                      future: _dbHelper.getTasks(),
                      builder: (context, snapshot) {
                        return ScrollConfiguration(
                          behavior: NoGlowBehaviour(),
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Taskpage(
                                                task: snapshot.data[index],
                                              ))).then((value) {
                                    setState(() {});
                                  });
                                },
                                child: FadeAnimation(
                                  1.2,
                                  TaskCardWidget(
                                    title: snapshot.data[index].title,
                                    desc: snapshot.data[index].description,
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                      //children: [
                      // TaskCardWidget(
                      //   title: "Task 1",
                      //   desc:
                      //       "Hello User! Welcome to Todo app, this is a default task that you can edit or delete to start using the app.",
                      // ),
                      // TaskCardWidget(),
                      // TaskCardWidget(),
                      // TaskCardWidget(),
                      // TaskCardWidget(),
                      // TaskCardWidget(),

                      //],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Taskpage(
                                  task: null,
                                ))).then((value) {
                      setState(() {});
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(colors: [
                        Color(0xFF7349FE),
                        Color(0xFF643FDB),
                      ], begin: Alignment(0.0, -1.0), end: Alignment(0.0, 1.0)),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/add_icon.png"),
                    ),
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
