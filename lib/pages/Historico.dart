import 'package:flutter/material.dart';
import 'package:sgpl_application/incidents/Ocorrencia_002.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';
import 'package:sgpl_application/incidents/Ocorrencia_001.dart';

class Historico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

      // Corpo da tela com botão
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinha os botões à esquerda
          children: [
            SizedBox(height: 1), // Espaço entre o AppBar e o primeiro botão
            SizedBox(
              width: 2000, // Largura fixa
              height: 60, // Altura fixa
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ocorrencia_001(),
                    ), // Substitua por sua tela
                  );
                  print('Botão 1 pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(130, 235, 113, 1),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Alinha o conteúdo à esquerda
                  children: <Text>[
                    Text(
                      '09/09/2024 - Teclado quebrado',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Define o texto como negrito),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24), // Espaço entre os botões
            SizedBox(
              width: 2000, // Largura fixa
              height: 60, // Altura fixa
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_002()),
                  );
                  print('Botão 2 pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(130, 235, 113, 1),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Alinha o conteúdo à esquerda
                  children: <Text>[
                    Text(
                      '09/09/2024 - Falha na conexão à internet',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Define o texto como negrito),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: 2000, // Largura fixa
              height: 60, // Altura fixa
              child: ElevatedButton(
                onPressed: () {
                  print('Botão 3 pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(254, 102, 102, 1),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Alinha o conteúdo à esquerda
                  children: <Text>[
                    Text(
                      '10/09/2024 - Falha no compartilhamento de tela',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Define o texto como negrito),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: 2000, // Largura fixa
              height: 60, // Altura fixa
              child: ElevatedButton(
                onPressed: () {
                  print('Botão 4 pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(253, 255, 128, 1),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Alinha o conteúdo à esquerda
                  children: <Text>[
                    Text(
                      '11/09/2024 - Erro no VS Code',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Define o texto como negrito),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: 2000, // Largura fixa
              height: 60, // Altura fixa
              child: ElevatedButton(
                onPressed: () {
                  print('Botão 5 pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(254, 102, 102, 1),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Alinha o conteúdo à esquerda
                  children: <Text>[
                    Text(
                      '11/09/2024 - Problemas com autenticação',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Define o texto como negrito),
                      ),
                    ),
                  ],
                ),
              ),
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
                //Botão Devoluções
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Devolucoes()),
                    );
                    print('Devoluções clicado');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor:
                        Colors.black, // Define a cor do texto e do ícone
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.desktop_windows_outlined),
                      SizedBox(width: 8),
                      Text('Devoluções'),
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
          ),
        ),
      ),
    );
  }
}
