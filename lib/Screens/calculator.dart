import 'package:flutter/material.dart';
import 'package:workout/Screens/Entering.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
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
              Color(0xFF3A1C72),
              Color(0xFFD76D77),
              Color(0xFFFFAF7B),
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 200, right: 200, top: 10,bottom: 10),
                child: Center(child: Details()),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/workout.png'))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
