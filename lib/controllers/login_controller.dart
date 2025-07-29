import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:html' as html;

class LoginController {
  static const String _baseUrl = 'http://localhost:8080';

  static Future<bool> signin(String rm, String senha) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/usuario/signin?rm=${rm}&senha=${senha}'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'rm': rm, 'senha': senha}),
      );
      
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}