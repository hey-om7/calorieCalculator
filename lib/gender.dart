import 'package:calorie_calc/age.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

int selection = -1;

class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GenderStful(),
        ),
      ),
    );
  }
}

class GenderStful extends StatefulWidget {
  const GenderStful({Key? key}) : super(key: key);

  @override
  _GenderStfulState createState() => _GenderStfulState();
}

class _GenderStfulState extends State<GenderStful> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              'Please enter your ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Gender",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0BC79A)),
            ),
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selection = 1;
                  });
                  print(selection);
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 172,
                      width: 135,
                      child: Center(
                        child: Image.asset(
                          'assets/male.png',
                          width: 87,
                          height: 87,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: selection == 1
                            ? Color(0xffA5FF7B)
                            : Color(0xff00CC9A),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Text(
                      'Male',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selection = 2;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 172,
                      width: 135,
                      child: Center(
                        child: Image.asset(
                          'assets/female.png',
                          width: 87,
                          height: 87,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: selection == 2
                            ? Color(0xffA5FF7B)
                            : Color(0xff00CC9A),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Text(
                      'Female',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            if (selection != -1) {
              selection == 1 ? globals.isMale = true : null;
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => Age(),
                ),
              );
            }
          },
          child: Container(
            margin: EdgeInsets.all(30),
            width: 195,
            height: 65,
            decoration: BoxDecoration(
              color: selection == -1 ? Color(0xffC4C4C4) : Color(0xff00CC9A),
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
