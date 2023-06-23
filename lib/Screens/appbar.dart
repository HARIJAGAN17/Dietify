import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/Login_page.dart';
import 'package:workout/Screens/Login.dart';

class customappbar extends StatefulWidget {
  const customappbar({super.key});

  @override
  State<customappbar> createState() => _customappbarState();
}

class _customappbarState extends State<customappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.160),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Image.asset(
            'assets/home.jpg',
            height: 25,
            alignment: Alignment.topCenter,
          ),
          Spacer(
            flex: 1,
          ),
          Text('DIETIFY',
              style: GoogleFonts.pacifico(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black)),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 100.0,
            width: 120.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF36D1DC), Color(0xFF5B86E5)],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.login, size: 15),
                ),
                Expanded(
                  child: MaterialButton(
                    elevation: 10.0,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    height: 42.0,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
