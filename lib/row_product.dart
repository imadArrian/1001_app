import 'package:flutter/material.dart';
import 'package:spinner_input/spinner_input.dart';
import 'productClass.dart';
//import 'fleeOfproducts.dart';

class RowProduct extends StatefulWidget {
  final ProductClass productClass;
  RowProduct({this.productClass});

  @override
  _RowProductState createState() => _RowProductState();
}

class _RowProductState extends State<RowProduct> {
  double sommeTotal;
  @override
  Widget build(BuildContext context) {
    /* setState(() {
      widget.productClass.sommeProduit = widget.productClass.prixProduit *
          widget.productClass.qtFardo *
          widget.productClass.qtProduit;
    }); */
    //print(widget.productClass.sommeProduit.value);
    //print("djaber");
    //ValueNotifier<double> _counter = ValueNotifier<double>(0);
    widget.productClass.setsommeProduit();
    /* widget.productClass.sommeProduit = widget.productClass.prixProduit *
        widget.productClass.qtFardo *
        widget.productClass.qtProduit;
    _counter.value = widget.productClass.sommeProduit; */

    return Row(
      children: <Widget>[
        // CartCounter(),
        Expanded(
          flex: 1,
          child: Container(
              //color: Colors.black38,

              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.productClass.nameProduit,
                      style: TextStyle(fontSize: 15)))),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpinnerInput(
              spinnerValue: widget.productClass.qtProduit.value,

              middleNumberStyle: TextStyle(fontSize: 20),
              plusButton: SpinnerButtonStyle(
                  elevation: 1,
                  color: Colors.white,
                  textColor: Colors.black,
                  height: 20,
                  width: 25,
                  highlightElevation: 10,
                  borderRadius: BorderRadius.circular(10)),
              minusButton: SpinnerButtonStyle(
                  elevation: 1,
                  color: Colors.white,
                  textColor: Colors.black,
                  height: 20,
                  width: 25,
                  highlightElevation: 10,
                  borderRadius: BorderRadius.circular(10)),
              //minValue: 0,
              //maxValue: 15,

              onChange: (newValue) {
                //print(widget.productClass.qtProduit.value);

                // widget.productClass.qtProduit.value = newValue;
                setState(() {
                  widget.productClass.setqtProduit(newValue);
                  widget.productClass.setsommeProduit();
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            //color: Colors.blue,
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpinnerInput(
              spinnerValue: widget.productClass.prixProduit.value,
              minValue: widget.productClass.minPrix,
              maxValue: widget.productClass.maxPrix,
              plusButton: SpinnerButtonStyle(
                  elevation: 1,
                  color: Colors.white,
                  textColor: Colors.black,
                  height: 20,
                  width: 25,
                  highlightElevation: 10,
                  borderRadius: BorderRadius.circular(10)),
              minusButton: SpinnerButtonStyle(
                  elevation: 1,
                  color: Colors.white,
                  textColor: Colors.black,
                  height: 20,
                  width: 25,
                  highlightElevation: 10,
                  borderRadius: BorderRadius.circular(10)),
              onChange: (newValue) {
                // print(widget.productClass.prixProduit.value);

                // widget.productClass.setprixProduit(newValue);
                setState(() {
                  //  sommeTotal = newValue;

                  widget.productClass.setprixProduit(newValue);
                  widget.productClass.setsommeProduit();
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Align(
              alignment: Alignment.centerRight,
              child:
                  /* Text(
                (widget.productClass.sommeProduit.value).toString(),
                style: Theme.of(context).textTheme.headline4,
              ), */
                  ValueListenableBuilder(
                valueListenable: widget.productClass.sommeProduit,
                builder: (context, value, child) {
                  return Text(
                    '$value',
                    style: Theme.of(context).textTheme.headline5,
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
