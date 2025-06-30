import 'package:flutter/material.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/incidents/Ocorrencia_001.dart';
 
class Devolucoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor do fundo da página
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove a seta de voltar
        title: const Text('DEVOLUÇÕES',
        style: TextStyle(
        fontWeight: FontWeight.bold, // NEGRITO!
        fontSize: 29.0,  // Tamanho da fonte
        ), 
        ),
        backgroundColor: Colors.white, // Cor do fundo do AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quinta-Feira
            const Text(
              'Quinta-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            buildButton(context, '12/09/2024 - Teclado quebrado'),
            const SizedBox(height: 12),
            buildButton(context, '12/09/2024 - Problemas com a fonte de alimentação'),
            const SizedBox(height: 24),
 
            // Quarta-Feira
            const Text(
              'Quarta-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            buildButton(context, '11/09/2024 - Mouse não funciona'),
            const SizedBox(height: 12),
            buildButton(context, '11/09/2024 - Problemas com autenticação'),
            const SizedBox(height: 12),
            buildButton(context, '11/09/2024 - Erro no VS Code'),
            const SizedBox(height: 24),
 
            // Terça-Feira
            const Text(
              'Terça-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            buildButton(context, '10/09/2024 - Falha no compartilhamento de tela'),
            const SizedBox(height: 24),
 
            // Segunda-Feira
            const Text(
              'Segunda-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            buildButton(context, '09/09/2024 - Falha na conexão à internet'),
            const SizedBox(height: 12),
            buildButton(context, '09/09/2024 - Teclado quebrado'),
          ],
        ),
      ),
 
      // Menu inferior fixo
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Botão Histórico
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Historico()),
                  );
                  print('Histórico clicado');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Row(
                  children: const [
                    Icon(Icons.history),
                    SizedBox(width: 8),
                    Text('Histórico'),
                  ],
                ),
              ),
              // Botão Sair
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SgplApp()),
                    (route) => false,
                  );
                  print('Sair clicado');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Row(
                  children: const [
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
    );
  }
 
  Widget buildButton(BuildContext context, String text) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ocorrencia_001()),
          );
          print('$text pressionado');
        },
        style: ElevatedButton.styleFrom(
          elevation: 3,
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.black26),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}