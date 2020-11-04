import 'package:flutter/material.dart';
import 'package:pokedex/ui/screens/types/type_card.dart';
import 'package:pokedex/ui/screens/types/type_entities/type_funcs.dart';

List<Widget> lister(int i, dynamic n, double w, String term) {
  var arr = effectreturner(i, n);
  return [
    Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        "Attacks to the types below will " + term,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    ),
    Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        width: w * 0.75,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            for (int j = 0; j < arr.length; j++)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TypeDisplayContainer(
                  i: i,
                  path: "effects",
                  value: n,
                  width: 100.0,
                  j: j,
                  height: 30,
                  typeList: arr,
                ),
              )
          ],
        )),
    Container(
      margin: EdgeInsets.only(top: 20),
      height: 1,
      width: w / 1.7,
      color: Colors.black12,
    ),
  ];
}
