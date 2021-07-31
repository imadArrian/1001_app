import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:spinner_input/spinner_input.dart';
//import 'package:flutter_spinbox/flutter_spinbox.dart';
//import 'cart_counter.dart';
import 'row_product.dart';
//import 'productClass.dart';
//import 'constants.dart';
import 'fleeOfproducts.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final FleeOfProducts providedFleetOfCars =
        Provider.of<FleeOfProducts>(context);
    providedFleetOfCars.siglo.setprixProduit(515);
    providedFleetOfCars.cafe1001.setprixProduit(685);
    providedFleetOfCars.gold.setprixProduit(805);
    providedFleetOfCars.pot400.setprixProduit(285);
    providedFleetOfCars.pot800.setprixProduit(570);
    providedFleetOfCars.bidon5K.setprixProduit(635);
    providedFleetOfCars.cafe2w.setprixProduit(605);
    providedFleetOfCars.lait500.setprixProduit(325);
    providedFleetOfCars.lait500sach.setprixProduit(320);
    providedFleetOfCars.lait125.setprixProduit(670);
    providedFleetOfCars.obrac.setprixProduit(320);
    providedFleetOfCars.avrl400.setprixProduit(90);
    providedFleetOfCars.avrl800.setprixProduit(172);
    providedFleetOfCars.mw400.setprixProduit(83);
    providedFleetOfCars.mw800.setprixProduit(160);
    providedFleetOfCars.hrsAVR400.setprixProduit(86);
    providedFleetOfCars.hrsAVR800.setprixProduit(170);
    providedFleetOfCars.hrsMW400.setprixProduit(88);
    providedFleetOfCars.hrsMW800.setprixProduit(175);

    // providedFleetOfCars.setSommeTotal();
    // print(providedFleetOfCars.sommeTotal.value.toString());
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            //divider(),
            RowProduct(
              //productClass: cafe1001,
              productClass: providedFleetOfCars.siglo,
            ),
            RowProduct(
              productClass: providedFleetOfCars.cafe1001,
            ),
            RowProduct(
              productClass: providedFleetOfCars.gold,
            ),
            RowProduct(
              productClass: providedFleetOfCars.pot400,
            ),
            RowProduct(
              productClass: providedFleetOfCars.pot800,
            ),
            RowProduct(
              productClass: providedFleetOfCars.bidon5K,
            ),
            RowProduct(
              productClass: providedFleetOfCars.cafe2w,
            ),
            Divider(),
            RowProduct(
              productClass: providedFleetOfCars.lait500,
            ),
            RowProduct(
              productClass: providedFleetOfCars.lait500sach,
            ),
            RowProduct(
              productClass: providedFleetOfCars.lait125,
            ),
            RowProduct(
              productClass: providedFleetOfCars.obrac,
            ),
            Divider(),
            RowProduct(
              productClass: providedFleetOfCars.avrl400,
            ),
            RowProduct(
              productClass: providedFleetOfCars.avrl800,
            ),
            RowProduct(
              productClass: providedFleetOfCars.mw400,
            ),
            RowProduct(
              productClass: providedFleetOfCars.mw800,
            ),
            Divider(),
            RowProduct(
              productClass: providedFleetOfCars.hrsAVR400,
            ),
            RowProduct(
              productClass: providedFleetOfCars.hrsAVR800,
            ),
            RowProduct(
              productClass: providedFleetOfCars.hrsMW400,
            ),
            RowProduct(
              productClass: providedFleetOfCars.hrsMW800,
            ),

            Divider(),
            Divider(),
            Divider(),
            // Text(providedFleetOfCars.sm.toString()),

            /* ValueListenableBuilder<double>(
              valueListenable: providedFleetOfCars.obrac.prixProduit,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ), */

            ValueListenableBuilder3<
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double,
                double>(
              providedFleetOfCars.siglo.sommeProduit,
              providedFleetOfCars.cafe1001.sommeProduit,
              providedFleetOfCars.gold.sommeProduit,
              providedFleetOfCars.pot400.sommeProduit,
              providedFleetOfCars.pot800.sommeProduit,
              providedFleetOfCars.bidon5K.sommeProduit,
              providedFleetOfCars.cafe2w.sommeProduit,
              providedFleetOfCars.lait500.sommeProduit,
              providedFleetOfCars.lait500sach.sommeProduit,
              providedFleetOfCars.lait125.sommeProduit,
              providedFleetOfCars.obrac.sommeProduit,
              providedFleetOfCars.avrl400.sommeProduit,
              providedFleetOfCars.avrl800.sommeProduit,
              providedFleetOfCars.mw400.sommeProduit,
              providedFleetOfCars.mw800.sommeProduit,
              providedFleetOfCars.hrsAVR400.sommeProduit,
              providedFleetOfCars.hrsAVR800.sommeProduit,
              providedFleetOfCars.hrsMW400.sommeProduit,
              providedFleetOfCars.hrsMW800.sommeProduit,
              builder: (context,
                  value1,
                  value2,
                  value3,
                  value4,
                  value5,
                  value6,
                  value7,
                  value8,
                  value9,
                  value10,
                  value11,
                  value12,
                  value13,
                  value14,
                  value15,
                  value16,
                  value17,
                  value18,
                  value19,
                  child) {
                return Text(
                  (value1 +
                          value2 +
                          value3 +
                          value4 +
                          value5 +
                          value6 +
                          value7 +
                          value8 +
                          value9 +
                          value10 +
                          value11 +
                          value12 +
                          value13 +
                          value14 +
                          value15 +
                          value16 +
                          value17 +
                          value18 +
                          value19)
                      .toString(),
                  style: Theme.of(context).textTheme.headline2,
                );
              },
            ),

            Divider(),
            Divider(),

            // Somme(),
            //CartCounter(),
          ]),
        ));
  }
}

class ValueListenableBuilder3<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q,
    R, S, T> extends StatelessWidget {
  ValueListenableBuilder3(
    this.first,
    this.second,
    this.third,
    this.four,
    this.five,
    this.six,
    this.seven,
    this.eight,
    this.nine,
    this.ten,
    this.eleven,
    this.twelve,
    this.thirteen,
    this.forteen,
    this.fifteen,
    this.sixteen,
    this.seventeen,
    this.eighteen,
    this.nineteen, {
    Key key,
    this.builder,
    this.child,
  }) : super(key: key);

  final ValueListenable<A> first;
  final ValueListenable<B> second;
  final ValueListenable<C> third;
  final ValueListenable<D> four;
  final ValueListenable<E> five;
  final ValueListenable<F> six;
  final ValueListenable<G> seven;
  final ValueListenable<H> eight;
  final ValueListenable<I> nine;
  final ValueListenable<J> ten;
  final ValueListenable<K> eleven;
  final ValueListenable<L> twelve;
  final ValueListenable<M> thirteen;
  final ValueListenable<N> forteen;
  final ValueListenable<O> fifteen;
  final ValueListenable<P> sixteen;
  final ValueListenable<Q> seventeen;
  final ValueListenable<R> eighteen;
  final ValueListenable<S> nineteen;

  final Widget child;
  final Widget Function(
      BuildContext context,
      A a,
      B b,
      C c,
      D d,
      E e,
      F f,
      G g,
      H h,
      I i,
      J j,
      K k,
      L l,
      M m,
      N n,
      O o,
      P p,
      Q q,
      R r,
      S s,
      Widget child) builder;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<A>(
      valueListenable: first,
      builder: (_, a, __) {
        return ValueListenableBuilder<B>(
          valueListenable: second,
          builder: (_, b, __) {
            return ValueListenableBuilder<C>(
                valueListenable: third,
                builder: (_, c, __) {
                  return ValueListenableBuilder<D>(
                      valueListenable: four,
                      builder: (_, d, __) {
                        return ValueListenableBuilder<E>(
                            valueListenable: five,
                            builder: (_, e, __) {
                              return ValueListenableBuilder<F>(
                                  valueListenable: six,
                                  builder: (_, f, __) {
                                    return ValueListenableBuilder<G>(
                                        valueListenable: seven,
                                        builder: (_, g, __) {
                                          return ValueListenableBuilder<H>(
                                              valueListenable: eight,
                                              builder: (_, h, __) {
                                                return ValueListenableBuilder<
                                                        I>(
                                                    valueListenable: nine,
                                                    builder: (_, i, __) {
                                                      return ValueListenableBuilder<
                                                              J>(
                                                          valueListenable: ten,
                                                          builder: (_, j, __) {
                                                            return ValueListenableBuilder<
                                                                    K>(
                                                                valueListenable:
                                                                    eleven,
                                                                builder:
                                                                    (_, k, __) {
                                                                  return ValueListenableBuilder<
                                                                          L>(
                                                                      valueListenable:
                                                                          twelve,
                                                                      builder: (_,
                                                                          l,
                                                                          __) {
                                                                        return ValueListenableBuilder<
                                                                                M>(
                                                                            valueListenable:
                                                                                thirteen,
                                                                            builder: (_,
                                                                                m,
                                                                                __) {
                                                                              return ValueListenableBuilder<N>(
                                                                                  valueListenable: forteen,
                                                                                  builder: (_, n, __) {
                                                                                    return ValueListenableBuilder<O>(
                                                                                        valueListenable: fifteen,
                                                                                        builder: (_, o, __) {
                                                                                          return ValueListenableBuilder<P>(
                                                                                              valueListenable: sixteen,
                                                                                              builder: (_, p, __) {
                                                                                                return ValueListenableBuilder<Q>(
                                                                                                    valueListenable: seventeen,
                                                                                                    builder: (_, q, __) {
                                                                                                      return ValueListenableBuilder<R>(
                                                                                                          valueListenable: eighteen,
                                                                                                          builder: (_, r, __) {
                                                                                                            return ValueListenableBuilder<S>(
                                                                                                                valueListenable: nineteen,
                                                                                                                builder: (context, s, __) {
                                                                                                                  return builder(context, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, child);
                                                                                                                });
                                                                                                          });
                                                                                                    });
                                                                                              });
                                                                                        });
                                                                                  });
                                                                            });
                                                                      });
                                                                });
                                                          });
                                                    });
                                              });
                                        });
                                  });
                            });
                      });
                });
          },
        );
      },
    );
  }
}
