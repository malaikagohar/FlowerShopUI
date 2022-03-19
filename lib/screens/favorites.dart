import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.favorite_border_rounded,
          size: 50,
        ),
      ),
    );
  }
}
