import 'package:flutter/material.dart';
import 'package:rosella/models/user.dart';

Widget Tile(BuildContext context, int index) {
  List<dynamic> itemIcon = [
    Icons.person_outlined,
    Icons.alternate_email,
    Icons.phone,
    Icons.location_on_outlined,
  ];

  List<String> itemValue = [
    username,
    "malaikagohar2003@gmail.com",
    "+923353077951",
    "Gulshan-e-Iqbal, Block 10-A"
  ];
  return InkWell(
    splashColor: Colors.transparent,
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey[100]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              itemIcon[index],
              color: Colors.grey[500],
            ),
            const SizedBox(width: 15),
            Text(itemValue[index], style: const TextStyle(fontSize: 14)),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit_outlined),
          color: Colors.grey[500],
        )
      ]),
    ),
  );
}
