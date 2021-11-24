import 'package:calorie_calc/weight.dart';
import 'package:flutter/material.dart';

TextEditingController texteditingController = TextEditingController();

class Age extends StatelessWidget {
  const Age({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AgeStful(),
      ),
    );
  }
}

class AgeStful extends StatefulWidget {
  const AgeStful({Key? key}) : super(key: key);

  @override
  _AgeStfulState createState() => _AgeStfulState();
}

class _AgeStfulState extends State<AgeStful> {
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
                "Age",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0BC79A)),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 65,
          width: 320,
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
        Spacer(),
        GestureDetector(
          onTap: () {
            texteditingController.text.toString().length > 0
                ? Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Weight()))
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
