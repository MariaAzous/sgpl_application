import 'dart:convert';
import 'package:http/http.dart' as http;

class HistoricoController {
  static const String _baseUrl = 'http://localhost:8080';

  static Future<List<Map<String, dynamic>>> findAll() async {
    try {
      print('Fazendo requisição para: $_baseUrl/historico/findAll');
      final response = await http.get(
        Uri.parse('$_baseUrl/historico/findAll'),
        headers: {'Content-Type': 'application/json'},
      );
      print('Status: ${response.statusCode}, Body: ${response.body}');
      
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      }
      
      return _getMockData();
    } catch (e) {
      print('Erro ao buscar histórico: $e');
      return _getMockData();
    }
  }

    static Future<List<Map<String, dynamic>>> findByOcorrenciaId(int id) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/historico/findByOcorrenciaId/$id'),
        headers: {'Content-Type': 'application/json'},
      );
      print('Status: ${response.statusCode}, Body: ${response.body}');
      
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      }
      return _getMockData();
    } catch (e) {
      print('Erro ao buscar histórico: $e');
      return _getMockData();
    }
  }
  
  static List<Map<String, dynamic>> _getMockData() {
    return [
      {'id': 1, 'data': '09/09/2024', 'descricao': 'Teclado quebrado'},
      {'id': 2, 'data': '09/09/2024', 'descricao': 'Falha na conexão à internet'},
    ];
  }
}