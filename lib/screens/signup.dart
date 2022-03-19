import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background2.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.black45, BlendMode.luminosity)),
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontSize: 32, letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                      "We aim to provide quality over quantity. Our team is fully trained and experienced to produce best customer support, designs, and top quality products.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 0.5)),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          fillColor: Colors.black54,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Email",
                          labelText: "Email",
                          filled: true),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          fillColor: Colors.black54,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Username",
                          labelText: "Username",
                          filled: true),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.black54,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintText: "Password",
                          labelText: "Password",
                          filled: true),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(fontSize: 16),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(500, 40),
                          backgroundColor: const Color(0xFFF485AD)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or Enter Via Social Networks",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 60, 0, 80),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    "assets/googleicon.png",
                                    height: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text("Google",
                                      style: TextStyle(color: Colors.white)),
                                  const SizedBox(width: 5),
                                ],
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent)),
                          const VerticalDivider(color: Colors.white),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook),
                            label: const Text("Facebook"),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ))
    ]);
  }
}
