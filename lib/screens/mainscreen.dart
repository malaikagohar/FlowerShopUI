import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rosella/screens/favorites.dart';
import 'package:rosella/screens/home.dart';
import 'package:rosella/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<dynamic> pages = [const Favorites(), const Home(), const Profile()];
  final items = [
    const Icon(Icons.favorite_border_rounded),
    const Icon(Icons.home),
    const Icon(Icons.person_outline_outlined)
  ];
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
            color: const Color(0xFFF485AD),
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: const Color(0xFFF485AD),
            animationDuration: const Duration(milliseconds: 400),
            items: items,
            height: 52,
            index: currentIndex,
            onTap: (index) => setState(() => currentIndex = index)),
      ),
    );
  }
}
