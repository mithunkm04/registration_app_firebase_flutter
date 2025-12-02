import 'package:flutter/material.dart';
import 'package:registration_app_firebase_flutter/Login.dart';
import 'package:registration_app_firebase_flutter/service.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  bool isvisible = true;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Create an account,it's free",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Username",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return ("Username is required");
                    }

                    return null;
                  },
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: isvisible
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email", style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return ("Email is required");
                    }
                    if (!value.contains("@")) {
                      return ("Email is not valid");
                    }
                    return null;
                  },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: isvisible
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return ("Invalid password");
                    }
                    if (value.length < 8) {
                      return ("password must contain 8 characters");
                    }
                    return null;
                  },
                  obscureText: isvisible,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: isvisible
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return ("confirm the  Password");
                    }
                    if (value != passwordcontroller.text) {
                      return ("Enter the same as previous password");
                    }
                  },
                  controller: confirm_password,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: isvisible
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        register(
                          username: usernamecontroller.text,
                          password: passwordcontroller.text,
                          email: emailcontroller.text,
                          confirm_password: confirm_password.text,
                          context: context,
                        );
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 90),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ),
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
