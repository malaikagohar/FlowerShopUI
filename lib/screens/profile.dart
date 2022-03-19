import 'package:flutter/material.dart';
import 'package:rosella/screens/components/proftile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Color(0xFFF485AD),
                  )),
              elevation: 0,
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: Color(0xFFF485AD),
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                  color: const Color(0xFFF485AD),
                ),
                const SizedBox(width: 5)
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Center(
                        child: Container(
                            height: 130,
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            margin: const EdgeInsets.fromLTRB(0, 40, 0, 50),
                            child: Stack(children: [
                              const Center(
                                child: CircleAvatar(
                                    backgroundColor: Color(0xFFF485AD),
                                    backgroundImage: AssetImage(
                                      "assets/logo4.png",
                                    ),
                                    radius: 60),
                              ),
                              Positioned(
                                left: 65,
                                top: 95,
                                right: 0,
                                child: Container(
                                  height: 35,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFF485AD),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.camera_alt_outlined,
                                          size: 18,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ]))),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Tile(context, index);
                      },
                      itemCount: 4,
                    ),
                  ])),
            )));
  }
}
