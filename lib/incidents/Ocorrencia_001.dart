import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Certificacao.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';

class Ocorrencia_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor do fundo da página
  appBar: AppBar(
    automaticallyImplyLeading: false, // Remove a seta de voltar
    title: Text('OCORRÊNCIAS',
    style: TextStyle(
    fontWeight: FontWeight.bold, // NEGRITO!
    fontSize: 29.0,  // Tamanho da fonte
    ), 
    ),
    backgroundColor: Colors.white, // Cor do fundo do AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinha o texto à esquerda
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // aqui também
              children: [
                Text(
                  'Teclado quebrado   #001',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'RM974568',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12), // espaçamento entre o texto e o card
            Card(
              // Coloque os cards dentro do Column
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'RM Professor: 987604',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                    children: [
                    Text('Data: 09/09/2024'),
                    SizedBox(width: 18), // Espaço entre os textos
                    Text('Período: Noturno'),
                ],
),
                    
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Laboratório: 1'),
                        SizedBox(width: 18), // Espaço entre os textos
                        Text('Andar: 2'),
                        SizedBox(width: 18),
                        Text('Máquina: 009675'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16), // Espaço entre os cards
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.green.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // sombra para baixo
                  ),
                ],
              ),
              child: TextField(
                maxLines: 4,
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  hintText: 'Descrição da resolução',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade400,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.green, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.green, width: 1),
                  ),
                ),
              ),
            ),
            // Aqui o botão centralizado
            SizedBox(height: 40),
            Center(
              child: SizedBox(
                width: 160,
                height: 35,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Certificacao()),
      );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text('Enviar'),
                ),
              ),
            ),      
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
}
