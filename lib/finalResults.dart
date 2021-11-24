import 'package:calorie_calc/welcome.dart';
import 'package:flutter/material.dart';

class FinalResults extends StatelessWidget {
  const FinalResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff00CC9A),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25),
              child: Row(children: [
                Text(
                  'Final Results',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ]),
            ),
            Spacer(),
            Column(
              children: [
                results('To maintian weight', 235),
                results('To maintian weight', 2425),
                results('To maintian weight', 235),
                results('To maintian weight', 235),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => WelcomeScreen()));
              },
              child: Container(
                margin: EdgeInsets.all(30),
                width: 195,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Restart',
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
        ),
      ),
    );
  }
}

Container results(String text, int val) {
  return Container(
    margin: EdgeInsets.only(bottom: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 315,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 65,
          width: 315,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              "$val cal",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xffEEF1F7),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
    ),
  );
}
