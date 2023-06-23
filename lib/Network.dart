import 'package:http/http.dart' as http;
import 'dart:convert';

const apikey = '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';
class GetData
{
  Future<String> sendMessageToChatGpt(String message) async {
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
    return reply;
  }
}
