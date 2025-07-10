import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Certificacao.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';

class Ocorrencia_001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor do fundo da página
<<<<<<< HEAD
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove a seta de voltar
        title: Text(
          'OCORRÊNCIA',
          style: TextStyle(
            fontWeight: FontWeight.bold, // NEGRITO!
            fontSize: 29.0, // Tamanho da fonte
          ),
        ),
        backgroundColor: Colors.white, // Cor do fundo do AppBar
      ),
      // Corpo da tela com os detalhes da ocorrência
=======
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
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinha o texto à esquerda
          children: [
<<<<<<< HEAD
            SizedBox(height: 1), // Espaço entre o AppBar e o primeiro botão
=======
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // aqui também
              children: [
                Text(
<<<<<<< HEAD
                  'Teclado quebrado  #001',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'RM974568',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ],
            ),

            SizedBox(height: 12), // espaçamento entre o texto e o card
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50, // fundo claro como estava no Card
                border: Border.all(
                  color: Colors.green.shade200,
                  width: 1,
                ), // borda
                borderRadius: BorderRadius.circular(8), // cantos arredondados
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.green.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // sombra para baixo
                  ),
                ],
              ),

              padding: const EdgeInsets.all(16.0), // mesmo padding do Card
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'RM Professor: 987604',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Data: 09/09/2024'),
                      SizedBox(width: 18),
                      Text('Período: Noturno'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Laboratório: 1'),
                      SizedBox(width: 18),
                      Text('Andar: 2'),
                      SizedBox(width: 18),
                      Text('Máquina: 009675'),
                    ],
                  ),
                  const SizedBox(height: 15),

                  Text(
                    'Descrição do problema:',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 6),
                  const Text(
                    'Teclado ao início da aula foi encontrado com as teclas desmontadas e o cabo de conexão rompido.',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            SizedBox(height: 20), // Espaço entre os cards
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                border: Border.all(
                  color: Colors.green.shade200,
                  width: 1,
                ), // borda
=======
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
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.green.withOpacity(0.5),
                    spreadRadius: 2,
<<<<<<< HEAD
                    blurRadius: 4,
=======
                    blurRadius: 5,
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                    offset: Offset(0, 3), // sombra para baixo
                  ),
                ],
              ),
<<<<<<< HEAD
              child: TextField(
                maxLines: 4,
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  hintText: 'Descrição da resolução:',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                  ),

                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.green.shade200,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.green.shade200,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.green.shade200,
                      width: 1,
                    ),
=======
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
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                  ),
                ),
              ),
            ),
<<<<<<< HEAD

=======
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
            // Aqui o botão centralizado
            SizedBox(height: 40),
            Center(
              child: SizedBox(
                width: 160,
                height: 35,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
<<<<<<< HEAD
                      context,
                      MaterialPageRoute(builder: (context) => Certificacao()),
                    );
                    print('Botão de enviado pressionado');
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade400),
=======
        context,
        MaterialPageRoute(builder: (context) => Certificacao()),
      );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.white,
<<<<<<< HEAD
                    foregroundColor: Colors.grey.shade500,
=======
                    foregroundColor: Colors.black,
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text('Enviar'),
                ),
              ),
<<<<<<< HEAD
            ),
          ],
        ),
      ),

      // Menu inferior fixo com dois IconButton
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black, // Cor da borda
              width: 1.0, // Espessura da borda
            ),
          ),
        ),
        child: BottomAppBar(
          color: Colors.white, // Cor de fundo do BottomAppBar
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Botão HIstórico
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Historico()),
                    );
                    print('Histórico clicado');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor:
                        Colors.black, // Define a cor do texto e do ícone
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.history),
                      SizedBox(width: 8),
                      Text('Historico'),
                    ],
                  ),
                ),
                // Botão de Saída
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
                    foregroundColor:
                        Colors.black, // Define a cor do texto e do ícone
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 8),
                      Text('Sair'),
                    ],
                  ),
                ),
              ],
            ),
=======
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
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
          ),
        ),
      ),
    );
  }
}
