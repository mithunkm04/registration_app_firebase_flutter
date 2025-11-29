import 'package:flutter/material.dart';
import 'package:registration_app_firebase_flutter/Login.dart';
import 'package:registration_app_firebase_flutter/Sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Welcome",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 160),
            Image.asset("assets/welcome.png", height: 200, width: 200),
            SizedBox(height: 100),
            SizedBox(height: 50,width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,side: BorderSide(color: Colors.black),
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));},
                child: Text("login"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 50,width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,side: BorderSide(color: Colors.black)
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));},
                child: Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
