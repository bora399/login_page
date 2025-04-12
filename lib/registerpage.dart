// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:new_app/homepage.dart';
import 'package:sign_button/sign_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: size.width / 1.3,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 280,
                        height: 280,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Text("Welcome", style: TextStyle(fontSize: 22)),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text("Create your account",
                          style: TextStyle(fontSize: 12))),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade100,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50,
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Username',
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: const Color.fromARGB(
                                          255, 106, 105, 105))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade100,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50,
                            ),
                            child: Icon(
                              Icons.mail,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: const Color.fromARGB(
                                          255, 106, 105, 105))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 15.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade100,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50,
                            ),
                            child: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: const Color.fromARGB(
                                          255, 106, 105, 105))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.blue)),
                        child: Text("Sign Up",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: const Color.fromARGB(255, 106, 105, 105),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Or sign up with',
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 106, 105, 105)),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: const Color.fromARGB(255, 106, 105, 105),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: SignInButton.mini(
                            buttonType: ButtonType.instagram,
                            onPressed: () {},
                            buttonSize: ButtonSize.large,
                            btnColor: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: SignInButton.mini(
                            buttonType: ButtonType.facebook,
                            onPressed: () {},
                            buttonSize: ButtonSize.large,
                            btnColor: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: SignInButton.mini(
                            buttonType: ButtonType.twitter,
                            onPressed: () {},
                            buttonSize: ButtonSize.large,
                            btnColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
