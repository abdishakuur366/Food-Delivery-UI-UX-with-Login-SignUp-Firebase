import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/screen/home.dart';
import 'package:fooddelivery/screen/login.dart';
import 'package:fooddelivery/screen/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          Stack(children: [
            Image.asset('assets/images/shape8.png'),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:
                    EdgeInsets.only(top: defaultPadding, right: defaultPadding),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Spacer(),
          Center(
            child: Column(
              children: [
                Text(
                  "Create an account",
                  style: GoogleFonts.ubuntu(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                //Username
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          height: 10,
                          width: 10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.person_outlined,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        )),
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                //Phone
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          height: 10,
                          width: 10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.phone_android_rounded,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "Phone",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        )),
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                //Email
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: TextField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          height: 10,
                          width: 10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        )),
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                //Password
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: TextField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          height: 10,
                          width: 10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        )),
                  ),
                ),

                // Row(
                //   children: [
                //     Checkbox(
                //       checkColor: Colors.white,
                //       activeColor: Colors.orange,
                //       side: BorderSide(
                //         width: 1,
                //         color: Colors.orange,
                //       ),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //       value: isChecked,
                //       onChanged: (bool? value) {
                //         setState(() {
                //           isChecked = value!;
                //         });
                //       },
                //     ),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Text(
                //       "Remember me",
                //       style: GoogleFonts.ubuntu(
                //         color: Colors.orange,
                //         fontSize: 14,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Color(0XFFF7B43F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text);

                        // clearFields();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Email Created Successfully!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Colors.teal,
                          ),
                        );
                        CircularProgressIndicator(
                          color: Colors.white,
                        );
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } catch (error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              error.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: RichText(
                      text: TextSpan(
                          text: "Alreday have an account ",
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                        TextSpan(
                          text: "Sing In",
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ])),
                )
              ],
            ),
          ),
          // Spacer(),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset('assets/images/shape9.png')),
        ],
      ),
    );
  }
}
