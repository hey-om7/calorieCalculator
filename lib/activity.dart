import 'package:calorie_calc/finalResults.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ActivityStful(),
      ),
    );
  }
}

class ActivityStful extends StatefulWidget {
  const ActivityStful({Key? key}) : super(key: key);

  @override
  _ActivityStfulState createState() => _ActivityStfulState();
}

class _ActivityStfulState extends State<ActivityStful> {
  GestureDetector PickItem(String text, int number) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selection = number;
        });
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              selection == number ? "assets/tick_on.png" : 'assets/tick.png',
              width: 22,
              height: 22,
            ),
            Container(
              height: 65,
              width: 240,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    color: selection == number ? Colors.white : Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color:
                    selection == number ? Color(0xff00CC9A) : Color(0xffEEF1F7),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please enter your ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Activity",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0BC79A)),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            PickItem('No exercise', 1),
            PickItem('1-3 days per week', 2),
            PickItem('3-5 days per week', 3),
            PickItem('7 days per week', 4),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            globals.activity = selection;
            selection != -1
                ? Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => FinalResults()))
                : null;
          },
          child: Container(
            margin: EdgeInsets.all(30),
            width: 195,
            height: 65,
            decoration: BoxDecoration(
              color: selection != -1 ? Color(0xff00CC9A) : Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Finish',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

int selection = -1;
