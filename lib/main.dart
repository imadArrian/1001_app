import 'package:flutter/material.dart';
import 'package:myapp/fleeOfproducts.dart';
//import 'package:spinner_input/spinner_input.dart';
//import 'package:flutter_spinbox/flutter_spinbox.dart';
//import 'cart_counter.dart';
//import 'row_product.dart';
//import 'productClass.dart';
//import 'constants.dart';
import 'home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MySpinner());

class MySpinner extends StatefulWidget {
  @override
  _MySpinnerState createState() => _MySpinnerState();
}

class _MySpinnerState extends State<MySpinner> {
  //double sommeCafe = qtCafe*5*prixCafe;

  @override
  Widget build(BuildContext context) {
    return Provider<FleeOfProducts>(
      create: (BuildContext context) => FleeOfProducts(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}

/* Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    child: Container(
      width: 0.8,
      color: Colors.yellow,
    ),
  );
}

class Somme extends StatefulWidget {
  @override
  _SommeState createState() => _SommeState();
}

class _SommeState extends State<Somme> {
  double total;
  int test = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      // total = obrac.sommeProduit.toDouble() + lait500.sommeProduit.toDouble();
    });

    return Row(children: <Widget>[
      Text(
        'You had tapped $test.',
      ),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(() => test++),
      ),
      Divider(),
      Text(obrac.sommeProduit.toString()),
      //Text(total.toString()),
    ]);
  }
} */
