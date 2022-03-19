import 'package:flutter/material.dart';
import 'package:rosella/models/Popular.dart';

PopCard(BuildContext context, int index) {
  Size size = MediaQuery.of(context).size;
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
    Container(
        height: 95,
        width: 95,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('${popularFlowers[index].Image}'),
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)))),
    Container(
        height: 70,
        width: size.width - 120,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${popularFlowers[index].name}',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${popularFlowers[index].price}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.shopping_cart))
        ])),
  ]);
}
