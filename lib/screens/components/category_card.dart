import 'package:flutter/material.dart';
import 'package:rosella/models/categories.dart';

CatCard(BuildContext context, int index) {
  Size size = MediaQuery.of(context).size;
  return Container(
    color: Colors.transparent,
    margin: const EdgeInsets.only(left: 20, top: 10, bottom: 0, right: 10),
    width: MediaQuery.of(context).orientation == Orientation.portrait
        ? size.width * 0.4
        : size.width * 0.3,
    child: Column(children: [
      Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).orientation == Orientation.portrait
              ? size.width
              : size.width * 0.3,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? size.height * 0.2
              : size.height * 0.43,
          decoration: (BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    '${items[index].Image}',
                  ),
                  fit:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? BoxFit.fitHeight
                          : BoxFit.cover),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30))))),
      Container(
          width: size.width,
          height: 35,
          alignment: Alignment.bottomCenter,
          child: Center(
              child: Text('${items[index].name}',
                  style: const TextStyle(fontSize: 16))),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Colors.white,
          )),
    ]),
  );
}
