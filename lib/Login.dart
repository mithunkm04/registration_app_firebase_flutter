import 'package:flutter/material.dart';
import 'package:registration_app_firebase_flutter/Sign_up.dart';
import 'package:registration_app_firebase_flutter/forgot.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text("Login to your account", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Email", style: TextStyle(color: Colors.black)),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Password", style: TextStyle(color: Colors.black)),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot()),
                  );
                },
                child: Text(
                  "forgot password?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {},
                child: Text("Login", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 40),
        
            Expanded(child: Image.asset("assets/login.jpg", height: 400, width: 400)),
          ],
        ),
      ),
    );
  }
}
