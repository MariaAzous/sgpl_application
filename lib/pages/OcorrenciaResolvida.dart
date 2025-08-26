import 'package:flutter/material.dart';
import 'package:sgpl_application/controllers/ocorrencia_controller.dart';

class OcorrenciaResolvida extends StatefulWidget {
  final int ocorrenciaId;

  OcorrenciaResolvida(this.ocorrenciaId);

  @override
  _OcorrenciaResolvidaState createState() => _OcorrenciaResolvidaState();
}

class _OcorrenciaResolvidaState extends State<OcorrenciaResolvida> {
  Map<String, dynamic>? ocorrenciaData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOcorrencia();
  }

  _loadOcorrencia() async {
    final data = await OcorrenciaController.findById(widget.ocorrenciaId);
    setState(() {
      ocorrenciaData = data;
      isLoading = false;
    });
  }

  Color getClassificacaoColor(String classificacao) {
    switch (classificacao) {
      case 'ELETIVA':
        return Color(0xFF4CAF50);
      case 'URGENTE':
        return Color(0xFFFFC107);
      case 'EMERGENCIA':
        return Color(0xFFF44336);
      default:
        return Colors.grey;
    }
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('Ocorrência Resolvida')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'OCORRÊNCIA RESOLVIDA',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: getClassificacaoColor(
                                  ocorrenciaData?['classificacao'])
                              .withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'RESOLVIDO',
                          style: TextStyle(
                            color: getClassificacaoColor(
                                ocorrenciaData?['classificacao']),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                 Text(
  ocorrenciaData != null
      ? '${ocorrenciaData!['titulo']} #${ocorrenciaData!['id']}'
      : 'Carregando...',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.grey[800],
  ),
),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detalhes',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800]),
                  ),
                  SizedBox(height: 16),
                  _buildDetailRow('Professor',
                      'RM ${ocorrenciaData?['professor']['rm'] ?? ''}'),
                  _buildDetailRow(
                      'Data', ocorrenciaData?['dataOcorrencia'] ?? ''),
                  _buildDetailRow(
                      'Período', ocorrenciaData?['periodo'] ?? ''),
                  _buildDetailRow(
                      'Ambiente', ocorrenciaData?['ambiente']['nome'] ?? ''),
                  SizedBox(height: 16),
                  Text(
                    'Descrição do Problema',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8),
                  Text(
                    ocorrenciaData?['descricao'] ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Campo de resolução (apenas texto)
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
          child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
                  Text(
                    'Descrição da Resolução',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    ocorrenciaData?['resolucao'] ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      height: 1.5,
                    ),
                  ),
    ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
