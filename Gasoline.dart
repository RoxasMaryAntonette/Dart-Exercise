import 'dart:io';
import 'Option.dart';

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

void main() {
  print("\n\tGAS STATTION\n");
  print(" Gas Type\t\tPrice\n");
  print("1. Leaded\t\t45.75");
  print("2. Unleaded\t\t43.18");
  print("3. Diesel\t\t37.12");
  print("4. Bio-Dieasel\t\t 48.03");
  stdout.write("\nSELECT NUMBER (1-4): ");
  var line = stdin.readLineSync();

  int a = int.parse(line);
  double leaded = 45.75.toPrecision(2);
  double unleaded = 43.18.toPrecision(2);
  double diesel = 37.12.toPrecision(2);
  double bioDiesel = 48.03.toPrecision(2);
  double output = 0;

  if (a == 1) {
    print("\n\t\tPURCHASE OPTIONS\n\t");
    purchaseTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment / leaded;
      print("Total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment * leaded;
      print("Total Payable: $output");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;
      print("Change: $output Pesos");
    } else {
      print("Not in the option");
    }
  } else if (a == 2) {
    print("\n\t\tPurchase Options\n\t");
    purchaseTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment / unleaded;
      print("Total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      double output = 0;
      output = payment * unleaded;
      print("Total Payable: $output Pesos");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;
      if (output < payment) ;
      print("Change: $output Pesos");
    } else {
      print("Not in the option");
    }
  } else if (a == 3) {
    print("\n\t\tPurchase Options\n\t");
    purchaseTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      double output = 0;
      output = payment / diesel;
      print("Total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment * diesel;
      print("Total Payable: $output Pesos");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;
      print("Change: $output Pesos");
    } else {
      print("Not in the option");
    }
  } else if (a == 4) {
    print("\n\t\tPurchase Options\n\t");
    purchaseTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment / bioDiesel;
      print("Total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment * bioDiesel;
      print("Total Payable: $output");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;

      print('Change: $output Pesos ');
    } else {
      print("Not in the option");
    }
  } else {
    print("Not in the option");
  }
}
