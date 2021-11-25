import 'package:calorie_calc/activity.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

TextEditingController texteditingController = TextEditingController();

class Height extends StatelessWidget {
  const Height({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: HeightStful(),
      ),
    );
  }
}

class HeightStful extends StatefulWidget {
  const HeightStful({Key? key}) : super(key: key);

  @override
  _HeightStfulState createState() => _HeightStfulState();
}

class _HeightStfulState extends State<HeightStful> {
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
                "Height",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0BC79A)),
              ),
            ],
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 65,
              width: 240,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: texteditingController,
                onChanged: (text) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffEEF1F7),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Text(
              'cms',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            globals.height = int.parse(texteditingController.text);
            texteditingController.text.toString().length > 0
                ? Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Activity()))
                : null;
          },
          child: Container(
            margin: EdgeInsets.all(30),
            width: 195,
            height: 65,
            decoration: BoxDecoration(
              color: texteditingController.text.toString().length > 0
                  ? Color(0xff00CC9A)
                  : Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Next',
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
