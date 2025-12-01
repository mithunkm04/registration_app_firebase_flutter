import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration_app_firebase_flutter/home.dart';

Future<void> register({
  required String username,
  required String password,
  required String email,
  required String confirm_password,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("user created succesfully")));
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      context
    ).showSnackBar(SnackBar(content: Text("Logined succesfully")));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  } catch (e) {
    ScaffoldMessenger.of(
      context
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> forgot({required String email}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email send succefully")));
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
