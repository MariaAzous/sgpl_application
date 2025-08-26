import 'dart:convert';
import 'package:http/http.dart' as http;

class OcorrenciaController {
  static const String _baseUrl = 'http://localhost:8080';

  static Future<Map<String, dynamic>?> findById(int id) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/ocorrencia/findById/$id'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      return _getMockData(1);
    }
  }

  static Future<void> resolverOcorrencia(int id, String resolucao) async {
    final url = Uri.parse('$_baseUrl/ocorrencia/resolver/$id');

    final body = {
      "resolucao": resolucao,
      // Adicione outros campos se necessário, como "descricao", "status", etc.
    };
    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        print('Ocorrência resolvida com sucesso.');
      } else {
        print('Erro ao resolver ocorrência: ${response.statusCode}');
      }
    } catch (e) {
      print('Exceção ao resolver ocorrência: $e');
    }
  }

  static Future<List<Map<String, dynamic>>> findAll() async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/ocorrencia/findAllAtivo'),
        headers: {'Content-Type': 'application/json'},
      );
      print('Status: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      print('Erro ao buscar histórico: $e');
      return [];
    }
  }

    static Future<List<Map<String, dynamic>>> findAllConcluida() async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/ocorrencia/findAllConcluida'),
        headers: {'Content-Type': 'application/json'},
      );
      print('Status: ${response.statusCode}, Body: ${response.body}');

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      print('Erro ao buscar histórico: $e');
      return [];
    }
  }

  static Map<String, dynamic>? _getMockData(int id) {
    final mockData = {
      1: {
        'id': id,
        'titulo': 'Ocorrência Mock',
        'descricao': 'Esta é uma ocorrência simulada.',
        'status': 'pendente',
      },
    };

    return mockData[id];
  }
}
