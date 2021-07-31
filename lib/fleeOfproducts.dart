import 'package:flutter/material.dart';
import 'package:myapp/productClass.dart';
//import 'package:myapp/somme.dart';
//import 'row_product.dart';

class FleeOfProducts {
  ValueNotifier<double> _sommeTotal = ValueNotifier<double>(0);
  ValueNotifier<double> get sommeTotal => _sommeTotal;

  /* void setSommeTotal() {
    sommeTotal.value = siglo.sommeProduit.value + obrac.sommeProduit.value;
  } */

  ProductClass siglo = ProductClass(
    nameProduit: "siglo",
    qtFardo: 5,

    //qtProduit: 0,
    //prixProduit: 515,
    minPrix: 510,
    maxPrix: 515,
  );

  ProductClass cafe1001 = ProductClass(
    nameProduit: "cafe1001",
    qtFardo: 5,
    // qtProduit: 0,
//prixProduit: 685,
    minPrix: 680,
    maxPrix: 685,
  );
  ProductClass gold = ProductClass(
    nameProduit: "gold",
    qtFardo: 5,
    //qtProduit: 0,
    //prixProduit: 805,
    minPrix: 800,
    maxPrix: 805,
  );
  ProductClass pot400 = ProductClass(
    nameProduit: "pot400",
    qtFardo: 6,
    //qtProduit: 0,
    //prixProduit: 285,
    minPrix: 280,
    maxPrix: 285,
  );
  ProductClass pot800 = ProductClass(
    nameProduit: "pot800",
    qtFardo: 6,
    //qtProduit: 0,
    //prixProduit: 570,
    minPrix: 565,
    maxPrix: 570,
  );
  ProductClass bidon5K = ProductClass(
    nameProduit: "bidon5K",
    qtFardo: 5,
    // qtProduit: 0,
    //prixProduit: 635,
    minPrix: 630,
    maxPrix: 635,
  );
  ProductClass cafe2w = ProductClass(
    nameProduit: "2w",
    qtFardo: 5,
    //qtProduit: 0,
    //prixProduit: 605,
    minPrix: 600,
    maxPrix: 605,
  );
  ProductClass lait500 = ProductClass(
    nameProduit: "lait500",
    qtFardo: 12,
    //qtProduit: 0,
    //prixProduit: 325,
    minPrix: 320,
    maxPrix: 325,
  );
  ProductClass lait500sach = ProductClass(
    nameProduit: "laitsach",
    qtFardo: 12,
    //qtProduit: 0,
    // prixProduit: 320,
    minPrix: 315,
    maxPrix: 320,
  );
  ProductClass lait125 = ProductClass(
    nameProduit: "lait125",
    qtFardo: 4,
    //qtProduit: 0,
    // prixProduit: 83.75,
    minPrix: 676,
    maxPrix: 680,
  );
  ProductClass obrac = ProductClass(
    nameProduit: "obrac",
    qtFardo: 12,
    //qtProduit: 0,
    // prixProduit: 285,
    minPrix: 280,
    maxPrix: 285,
  );
  ProductClass avrl400 = ProductClass(
    nameProduit: "avrl400",
    qtFardo: 24,
    //qtProduit: 0,
    //prixProduit: 90,
    minPrix: 88,
    maxPrix: 90,
  );
  ProductClass avrl800 = ProductClass(
    nameProduit: "avrl800",
    qtFardo: 12,
    //qtProduit: 0,
    //prixProduit: 172,
    minPrix: 168,
    maxPrix: 172,
  );
  ProductClass mw400 = ProductClass(
    nameProduit: "mw400",
    qtFardo: 24,
    // qtProduit: 0,
    //prixProduit: 83,
    minPrix: 81,
    maxPrix: 83,
  );
  ProductClass mw800 = ProductClass(
    nameProduit: "mw800",
    qtFardo: 12,
    //qtProduit: 0,
    // prixProduit: 160,
    minPrix: 156,
    maxPrix: 160,
  );
  ProductClass hrsAVR400 = ProductClass(
    nameProduit: "hrsAVR400",
    qtFardo: 24,
    // qtProduit: 0,
    // prixProduit: 170,
    minPrix: 165,
    maxPrix: 170,
  );
  ProductClass hrsAVR800 = ProductClass(
    nameProduit: "hrsAVR800",
    qtFardo: 12,
    //qtProduit: 0,
    //prixProduit: 170,
    minPrix: 165,
    maxPrix: 170,
  );
  ProductClass hrsMW400 = ProductClass(
    nameProduit: "hrsMW400",
    qtFardo: 24,
    //qtProduit: 0,
    // prixProduit: 86,
    minPrix: 84,
    maxPrix: 86,
  );
  ProductClass hrsMW800 = ProductClass(
    nameProduit: "hrsMW800",
    qtFardo: 12,
    //qtProduit: 0,
    //prixProduit: 175,
    minPrix: 170,
    maxPrix: 175,
  );
  ProductClass hrs135 = ProductClass(
    nameProduit: "siglo",
    qtFardo: 72,
    //qtProduit: 0,
    // prixProduit: 33,
    minPrix: 31,
    maxPrix: 33,
  );

  /* void setSM() {
    this.sm = siglo.sommeProduit.value + obrac.sommeProduit.value;
  } */
}
