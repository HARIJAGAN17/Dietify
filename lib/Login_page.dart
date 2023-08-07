import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/Screens/Button.dart';
import 'package:workout/Screens/calculator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF3A1C71),
              Color(0xFFD76D77),
              Color(0xFFFFAF7B),
            ],
          ),
        ),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                    image: AssetImage('assets/55204-removebg-preview.png'),
                  ))),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AvatarGlow(
                          glowColor: Colors.white,
                          endRadius: 160.0,
                          duration: Duration(milliseconds: 2000),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 50),
                          child: Material(
// Replace this child with your own
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              radius: 109.0,
                              backgroundColor:
                                  Colors.grey[100]?.withOpacity(0.16),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 100.0,
                                child: Text(
                                  'DIETIFy',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, right: 280),
                          child: EmailTextField(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, right: 280),
                          child: PasswordTextField(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableCard(
                            add: 'Login',
                            onPressing: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Calculator()));
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      style: TextStyle(
          color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),
      cursorColor: Colors.white,
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Set border color
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white), // Set focused border color
        ),
        labelStyle: TextStyle(color: Colors.white),
        labelText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      style: TextStyle(
          color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),
      cursorColor: Colors.white,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: 'gmail.com@',
        hintStyle: TextStyle(
            color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Set border color
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white), // Set focused border color
        ),
        labelStyle: TextStyle(color: Colors.white),
        labelText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
