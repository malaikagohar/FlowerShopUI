import 'package:flutter/material.dart';
import 'package:rosella/models/Popular.dart';
import 'package:rosella/models/categories.dart';
import 'package:rosella/screens/components/category_card.dart';
import 'package:rosella/screens/components/popular_tile.dart';

landscapeMode(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          height: size.height * 0.3,
          child: Stack(children: [
            Container(
                height: size.height * 0.25,
                decoration: const BoxDecoration(
                    color: Color(0xFFF485AD),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      width: size.width * 0.08,
                      child: Image.asset(
                        "assets/logo3.png",
                      )),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: size.height * 0.12,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 50,
                          color: const Color(0xfff485AD).withOpacity(0.5))
                    ]),
                child: TextField(
                  cursorColor: const Color(0xFFF485AD),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      focusColor: Colors.white,
                      prefixIcon: const Icon(Icons.search),
                      labelText: "Search",
                      hintStyle: const TextStyle(color: Color(0xfff485AD)),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
            ),
          ]),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          height: 24,
          child: Stack(
            children: [
              const Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                        color: const Color(0xfff485AD).withOpacity(0.2)),
                  ))
            ],
          ),
        ),
        Column(
          children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CatCard(context, index);
            },
            itemCount: items.length,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                        color: const Color(0xfff485AD).withOpacity(0.2)),
                  )),
              const Text(
                "Popular ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return PopCard(context, index);
              },
              itemCount: popularFlowers.length,
            ))
          ],
        ),
      ],
    ),
  );
}
