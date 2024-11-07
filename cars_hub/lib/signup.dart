import 'package:cars_hub/auth.dart';
import 'package:cars_hub/home.dart';
import 'package:cars_hub/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AuthService _auth = AuthService();

  GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  String emailuser = "";
  String passworduser = "";

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  var regpassword =
      RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%&\*])(?=.{8,})');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Form(
            key: form,
            child: Container(
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
                    padding: const EdgeInsets.fromLTRB(0, 20, 8, 8),
                    child: Text(
                      "SignUp with",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 165, 193, 212),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: Text(
                      "Cars Hub!    ",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 165, 193, 212),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 20.0),
                        TextFormField(
                          controller: name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter your Name";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        SizedBox(height: 10.0),
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
                        SizedBox(height: 10.0),
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
                        SizedBox(height: 10.0),
                        TextFormField(
                          onChanged: (val) {
                            passworduser = val;
                          },
                          controller: confirmpass,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter a Password";
                            } else if (value != pass.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          onPressed: () async {
                            if (form.currentState!.validate()) {
                              print("name: " + name.text);
                              print("email: " + email.text);
                              print("password: " + pass.text);
                              print("confirm password : " + confirmpass.text);
                              dynamic result = await _auth.signinAnon();
                              if (result == null) {
                                print("error signing in");
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                                print("Signed In successfully");
                                print(result);
                              }
                            }
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color.fromARGB(255, 32, 122, 182),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Or Sign Up With',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 165, 193, 212),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16),
                            ),
                            onPressed: () {
                              // Implement Google sign up logic here
                            },
                            icon: Icon(
                              Icons.g_translate,
                              color: Color.fromARGB(255, 32, 122, 182),
                            ),
                            label: Text(
                              'Sign Up with Google',
                              style: TextStyle(
                                color: Color.fromARGB(255, 32, 122, 182),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Already Registered?!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 165, 193, 212),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                },
                                icon: Icon(
                                  Icons.login,
                                  color: Color.fromARGB(255, 32, 122, 182),
                                ),
                                label: Text(
                                  'Login to Cars Hub',
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
      ),
    );
  }
}
