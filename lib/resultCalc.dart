import 'package:calorie_calc/globals.dart' as globals;

double AMR = 0;
double BMR = 0;
double resultCalc() {
  if (globals.isMale) {
    BMR = (66.47 +
        (13.75 * globals.weight) +
        (5.003 * globals.height) -
        (6.755 * globals.age));
  } else {
    BMR = (655.1 +
        (9.563 * globals.weight) +
        (1.850 * globals.height) -
        (4.676 * globals.age));
  }

  switch (globals.activity) {
    case 1:
      {
        AMR = BMR * 1.2;
        break;
      }
    case 2:
      {
        AMR = BMR * 1.375;
        break;
      }

    case 3:
      {
        AMR = BMR * 1.55;
        break;
      }
    case 4:
      {
        AMR = BMR * 1.9;
        break;
      }
  }
  print("amr is" + AMR.toString() + "--BMR IS " + BMR.toString());
  return AMR;
}
