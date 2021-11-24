import 'package:calorie_calc/height.dart';
import 'package:flutter/material.dart';

TextEditingController texteditingController = TextEditingController();

class Weight extends StatelessWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: WeightStful(),
      ),
    );
  }
}

class WeightStful extends StatefulWidget {
  const WeightStful({Key? key}) : super(key: key);

  @override
  _WeightStfulState createState() => _WeightStfulState();
}

class _WeightStfulState extends State<WeightStful> {
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
                "Weight",
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
              'Kg',
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
            texteditingController.text.toString().length > 0
                ? Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Height()))
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
