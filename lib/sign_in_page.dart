import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:validators/validators.dart';
import 'home_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmController = TextEditingController();

  bool obsecurePass = true;
  bool obsecureConfirmPass = true;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Sign up"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: deviceWidth * 0.02,
              right: deviceWidth * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusColor: Colors.black),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter E-mail";
                    }
                    if (!value.contains("@")) {
                      return "invalid E-mail";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusColor: Colors.black),
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter username";
                    }
                    if (!isAlpha(value) || !isUppercase(value[0])) {
                      if (!isAlpha(value)) {
                        return "name must be letters only";
                      } else if (!isUppercase(value[0])) {
                        return "first letter must be uppercase";
                      }
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  obscureText: obsecurePass,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obsecurePass = !obsecurePass;
                          });
                        },
                        icon: Icon(obsecurePass
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined),
                      ),
                      border: OutlineInputBorder(),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusColor: Colors.black),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter password";
                    }
                    if (value.length < 6) {
                      return "password should at lease contain 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Text(
                  "Confirm password",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  obscureText: obsecureConfirmPass,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obsecureConfirmPass = !obsecureConfirmPass;
                          });
                        },
                        icon: Icon(obsecureConfirmPass
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined),
                      ),
                      border: OutlineInputBorder(),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusColor: Colors.black),
                  controller: confirmController,
                  validator: (value) {
                    if (passwordController.text != value) {
                      return "passwords don't match";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Center(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.resolveWith((states) {
                        return Colors.blue;
                      }),
                      foregroundColor:
                          WidgetStateProperty.resolveWith((states) {
                        return Colors.white;
                      }),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      } else {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text("Account created"),
                                actions: [
                                  TextButton(
                                    child: const Text(
                                      'continue',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      navToHome(context);
                                    },
                                  )
                                ],
                              );
                            });
                      }
                    },
                    child: Text("SignUp"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navToHome(context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        duration: 1.seconds,
        child: HomeScreen(),
      ),
    );
  }
}
