import 'package:flutter/material.dart';
import 'package:sgpl_application/controllers/historico_controller.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';

class Historico extends StatefulWidget {
  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  List<Map<String, dynamic>> ocorrencias = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadHistorico();
  }

  _loadHistorico() async {
    final data = await HistoricoController.findAll();
    setState(() {
      ocorrencias = data;
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('HISTÓRICO')),
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white, // Cor do fundo da página
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove a seta de voltar
        title: Text(
          'HISTÓRICO',
          style: TextStyle(
            fontWeight: FontWeight.bold, // NEGRITO!
            fontSize: 29.0, // Tamanho da fonte
          ),
        ),
        backgroundColor: Colors.white, // Cor do fundo do AppBar
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...ocorrencias.map((ocorrencia) => Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: SizedBox(
                width: 2000,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => print('Ocorrência: ${ocorrencia['id']}'),
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    foregroundColor: Colors.black,
                    minimumSize: Size(200, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color.fromRGBO(130, 235, 113, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${ocorrencia['data'] ?? ''} - ${ocorrencia['descricao'] ?? ''}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            )).toList(),
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
                      MaterialPageRoute(builder: (context) => Devolucoes()),
                    );
                    print('Devoluções clicado');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Row(
                    children: [
                      Icon(Icons.assignment_return),
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
