import 'package:cars_hub/auth.dart';
import 'package:cars_hub/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Function toggleview;
  Login({required this.toggleview});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthService _auth = AuthService();

  GlobalKey<FormState> form = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  String emailuser = "";
  String passworduser = "";
  String error = "";

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  var regpassword =
      RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%&\*])(?=.{8,})');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: form,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 32, 122, 182),
                  Color.fromARGB(255, 7, 6, 110),
                  Color.fromARGB(255, 32, 122, 182),
                  Color.fromARGB(255, 7, 6, 110),
                  Color.fromARGB(255, 32, 122, 182),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 130, 8, 0),
                  child: Text(
                    "Login to ",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 8, 0),
                  child: Text(
                    "Cars Hub! ",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 20.0),
                      TextFormField(
                        controller: email,
                        onChanged: (val) {
                          setState(() {
                            emailuser = val;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter your Name";
                          } else if (!emailRegex.hasMatch(value)) {
                            return "Enter a Valid Email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        controller: pass,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter a Password";
                          } else if (!regpassword.hasMatch(value)) {
                            return "Enter a Valid Password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () async {
                          if (form.currentState!.validate()) {
                            emailuser = email.text.trim();
                            passworduser = pass.text;

                            // Sign in and retrieve user info
                            dynamic result =
                                await _auth.signInWithEmailandPassword(
                                    emailuser, passworduser);
                            if (result == null) {
                              setState(() {
                                error = "Incorrect Email or Password";
                              });
                            } else {
                              // Assuming result has a username field
                              String username = result.username ??
                                  "No Name"; // Provide fallback for null username

                              // Pass username to Home screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(
                                    emailuser: emailuser,
                                  ),
                                ),
                              );
                            }
                          }
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Color.fromARGB(255, 32, 122, 182),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          error,
                          style: TextStyle(fontSize: 12, color: Colors.red),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(height: 10.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Not Registered yet?!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 165, 193, 212),
                            ),
                          ),
                          SizedBox(height: 27),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16),
                              ),
                              onPressed: () {
                                widget.toggleview(); // Switch to Sign Up view
                              },
                              icon: Icon(
                                Icons.login,
                                color: Color.fromARGB(255, 32, 122, 182),
                              ),
                              label: Text(
                                'Sign Up with Cars Hub',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 32, 122, 182),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
