import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Button.dart';
import 'Bot.dart';

String height = '';
String weight = '';
String allergies = '';
String mealType = '';
String Goal = '';
String age ='';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String prompt =
      'create a sample diet plan with details for study purpose height is $height cm ,and my weight is $weight kg and allergic to $allergies make me a diet plan for $Goal days in $mealType type meal';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarGlow(
          glowColor: Colors.white,
          endRadius: 150.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 50),
          child: Material(
// Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              radius: 90.0,
              backgroundColor: Colors.grey[100]?.withOpacity(0.16),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 80.0,
                child: Text(
                  'DIETIFy',
                  style: GoogleFonts.ubuntu(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        ReusableText(
            label: 'Height',
            onChanged: (value) {
              height = value;
            }),
        SizedBox(
          height: 20,
        ),
        ReusableText(
            label: 'Weight',
            onChanged: (value) {
              weight = value;
            }),
        SizedBox(
          height: 20,
        ),
        ReusableText(
            label: 'Allergic',
            onChanged: (value) {
              allergies = value;
            }),
        SizedBox(
          height: 20,
        ),
        ReusableText(
            label: 'MealType',
            onChanged: (value) {
              mealType = value;
            }),
        SizedBox(
          height: 10,
        ),
        ReusableText(
            label: 'Days',
            onChanged: (value) {
              Goal = value;
            }),
        SizedBox(
          height: 10,
        ),
        ReusableText(
            label: 'Age',
            onChanged: (value) {
              age = value;
            }),
        SizedBox(
          height: 20,
        ),
        ReusableCard(
          add: 'Generate',
          onPressing: ()  {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatGPTScreen(chatResponse: prompt)));
            });
          },
        )
      ],
    );
  }
}

class ReusableText extends StatelessWidget {
  final String label;
  final ValueChanged<String> onChanged;

  ReusableText({required this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(
            color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),
        cursorColor: Colors.white,
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
            labelText: label),
        onChanged: onChanged,
      ),
    );
  }
}
