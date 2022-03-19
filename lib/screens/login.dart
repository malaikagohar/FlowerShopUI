import 'package:flutter/material.dart';
import 'package:rosella/models/user.dart';
import 'package:rosella/screens/mainscreen.dart';
import 'package:rosella/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _myFormKey = GlobalKey<FormState>();
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
            child: Form(
              key: _myFormKey,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      "Welcome Back!",
                      style: TextStyle(
                          color: Colors.white, fontSize: 32, letterSpacing: 2),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(" Sign in to your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 0.5)),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
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
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value != "Malaika Gohar") {
                            if (value != 'Malaika Gohar' &&
                                value != null &&
                                value.isNotEmpty) {
                              return 'Incorrect Username';
                            } else {
                              return 'Please provide username';
                            }
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6 ||
                              value != 'malaika2003') {
                            if (value != 'malaika2003' &&
                                value != null &&
                                value.isNotEmpty) {
                              return 'Incorrect Password';
                            } else {
                              return 'Password must contain atleast 6 characters';
                            }
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_myFormKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()));
                          }
                        },
                        child: const Text(
                          "LOGIN",
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SignUp()));
                      },
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Don't have an account? Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 80, 0, 30),
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
            ),
          ))
    ]);
  }
}
