import 'dart:convert';
import 'dart:io';

class CorsProxy {
  static Future<Map<String, dynamic>> makeRequest(String url) async {
    try {
      final client = HttpClient();
      client.badCertificateCallback = (cert, host, port) => true;
      
      final request = await client.getUrl(Uri.parse(url));
      request.headers.set('Access-Control-Allow-Origin', '*');
      request.headers.set('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
      request.headers.set('Access-Control-Allow-Headers', 'Content-Type');
      
      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();
      
      client.close();
      
      return {
        'statusCode': response.statusCode,
        'body': responseBody,
      };
    } catch (e) {
      return {
        'statusCode': 500,
        'body': '[]',
      };
    }
  }
}