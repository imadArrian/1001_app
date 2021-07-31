import 'package:flutter/widgets.dart';

class ProductClass {
  String nameProduit;
  //double qtProduit;
  //double prixProduit;
  double qtFardo;
  double minPrix;
  double maxPrix;
  //double sommeProduit;

  /* final ValueNotifier<String> _nameProduit = ValueNotifier<String>('');
  ValueNotifier<String> get nameProduit => _nameProduit; */

  ValueNotifier<double> _qtProduit = ValueNotifier<double>(0);
  ValueNotifier<double> get qtProduit => _qtProduit;

  ValueNotifier<double> _prixProduit = ValueNotifier<double>(0);
  ValueNotifier<double> get prixProduit => _prixProduit;

  ValueNotifier<double> _sommeProduit = ValueNotifier<double>(0);
  ValueNotifier<double> get sommeProduit => _sommeProduit;

  void setqtProduit(double qt) {
    _qtProduit.value = qt;
  }

  void setprixProduit(double prix) {
    _prixProduit.value = prix;
  }

  void setsommeProduit() {
    _sommeProduit.value = _prixProduit.value * _qtProduit.value * qtFardo;
  }

  ProductClass({
    this.nameProduit,
    this.qtFardo,
    this.minPrix,
    this.maxPrix,
  });
}
