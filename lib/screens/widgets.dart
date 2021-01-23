import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;

  TaskCardWidget({this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
                color: Color(0xFF211551),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              desc ?? "No Description Added",
              style: TextStyle(
                  fontSize: 16, color: Color(0xFF86829D), height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;
  TodoWidget({@required this.isDone, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.0),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: isDone?Color(0XFF7349FE):Colors.transparent,
                borderRadius: BorderRadius.circular(6),
                border: isDone?null:Border.all(color: Color(0xFF86829D),width: 1.5)),
            child: Image(
              image: AssetImage("assets/images/check_icon.png"),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text ?? "Unnamed Todo",
            style: TextStyle(
                fontWeight:isDone?FontWeight.bold: FontWeight.w500,
                fontSize: 16,
                color: isDone?Color(0xFF211551):Color(0xFF86829D)),
          ),
        ],
      ),
    );
  }
  
}
class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
