import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'Button.dart';

const apikey = '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';
    //'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';



class ChatGPTScreen extends StatefulWidget {
  final String chatResponse;

  ChatGPTScreen({required this.chatResponse});

  @override
  _ChatGPTScreenState createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  String train = 'Get your Diet plan by clicking the below button :';

  Future<String> sendMessageToChatGpt(String message) async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      },
    );
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");

    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": message}
      ],
      "max_tokens": 500,
    };

    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $apikey",
      },
      body: json.encode(body),
    );

    Map<String, dynamic> parsedReponse = json.decode(response.body);

    String reply = parsedReponse['choices'][0]['message']['content'];

    print(reply);

    Navigator.of(context).pop();
    return reply;
  }

  void onSendMessage() async {
    String response = await sendMessageToChatGpt(widget.chatResponse);

    setState(() {
      train = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          "DIETIFy",
          style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w900,fontSize: 40),
        ),
        centerTitle: true,
      ),
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: ListView(
                      children: [
                        Text(
                          train,
                          style: GoogleFonts.robotoFlex(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Center(
                child: ReusableCard(add: 'Generate', onPressing: onSendMessage),
              ),
            )
          ],
        ),
      ),
    );
  }
}
