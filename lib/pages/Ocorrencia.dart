import 'package:flutter/material.dart';
import 'package:sgpl_application/controllers/ocorrencia_controller.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Devolucao.dart';
import 'package:sgpl_application/pages/OcorrenciaId.dart';

class Ocorrencia extends StatefulWidget {
  @override
  _OcorrenciaState createState() => _OcorrenciaState();
}

class _OcorrenciaState extends State<Ocorrencia> {
  List<Map<String, dynamic>> ocorrencias = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOcorrencia();
  }

  _loadOcorrencia() async {
    final data = await OcorrenciaController.findAll();
    setState(() {
      ocorrencias = data;
      isLoading = false;
    });
  }

  Color getClassificacaoColor(String classificacao) {
    switch (classificacao) {
      case 'ELETIVA':
        return Color(0xFF4CAF50); // Verde
      case 'URGENTE':
        return Color(0xFFFFC107); // Amarelo
      case 'EMERGÊNCIA':
        return Color(0xFFF44336); // Vermelho
      default:
        return Colors.grey; // Cor padrão
    }
  }



  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('Ocorrências')),
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove a seta de voltar
        title: Text(
          'Ocorrências',
          style: TextStyle(
            fontWeight: FontWeight.bold, // NEGRITO!
            fontSize: 29.0, // Tamanho da fonte
          ),
        ),
        backgroundColor: Colors.white, // Cor do fundo do AppBar
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: ocorrencias.length,
                itemBuilder: (context, index) {
                  final ocorrencia = ocorrencias[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          int ocorrenciaId = ocorrencia['id'];
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OcorrenciaId(ocorrenciaId)));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Container(
                                width: 4,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: getClassificacaoColor(ocorrencia['classificacao']),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ocorrencia['dataOcorrencia'] ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      ocorrencia['descricao'] ?? '',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 1.0)),
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Devolucao()),
                    );
                    print('Devoluções clicado');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Row(
                    children: [
                      Icon(Icons.computer),
                      SizedBox(width: 8),
                      Text('Devoluções'),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SgplApp()),
                      (route) => false,
                    );
                    print('Sair clicado');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 8),
                      Text('Sair'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
