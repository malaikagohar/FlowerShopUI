import 'package:flutter/material.dart';
import 'package:rosella/models/user.dart';
import 'package:rosella/screens/Orientation/landscape.dart';
import 'package:rosella/screens/Orientation/portrait.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF485AD),
        elevation: 0,
      ),
      body: OrientationBuilder(
        builder: ((context, orientation) {
          if (orientation == Orientation.portrait) {
            return portraitMode(context);
          } else {
            return landscapeMode(context);
          }
        }),
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              decoration: const BoxDecoration(
                  color: Color(0xFFF485AD),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage('assets/logo4.png'),
                      radius: 45),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(username,
                      style: const TextStyle(fontSize: 22, color: Colors.white)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 60),
              child: Column(
                children: const [
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.content_paste_rounded),
                    title: Text('My Orders'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.favorite_outline_outlined),
                    title: Text('Wishlist'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.location_on_outlined),
                    title: Text('Addresses'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.star_outline_sharp),
                    title: Text('Vouchers'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.help_outline_outlined),
                    title: Text('Help Center'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
