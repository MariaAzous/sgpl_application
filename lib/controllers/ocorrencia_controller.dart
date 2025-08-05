import 'dart:convert';
import 'package:http/http.dart' as http;

class OcorrenciaController {
  static const String _baseUrl = 'http://localhost:8080';

  static Future<Map<String, dynamic>?> findById(int id) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/ocorrencia/$id'),
        headers: {'Content-Type': 'application/json'},
      );
      
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      
      return _getMockData(id);
    } catch (e) {
      return _getMockData(id);
    }
  }
  
  static Map<String, dynamic>? _getMockData(int id) {
    final mockData = {
      1: {
        'id': 1,
        'titulo': 'Teclado quebrado  #001',
        'rmAluno': 'RM974568',
        'rmProfessor': '987604',
        'data': '09/09/2024',
        'periodo': 'Noturno',
        'laboratorio': '1',
        'andar': '2',
        'maquina': '009675',
        'descricao': 'Teclado ao início da aula foi encontrado com as teclas desmontadas e o cabo de conexão rompido.'
      }
    };
    
    return mockData[id];
  }
}