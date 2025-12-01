import 'package:flutter/material.dart';
import 'package:registration_app_firebase_flutter/Login.dart';
import 'package:registration_app_firebase_flutter/service.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController emailcontroller=TextEditingController();
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Form(key: formkey,
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "send link to your account",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Email", style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {forgot(email: emailcontroller.text);},
                    child: Text("Send LInk", style: TextStyle(fontSize: 20)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text("Login", style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
