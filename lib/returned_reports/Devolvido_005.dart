import 'package:flutter/material.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';
import 'package:sgpl_application/pages/Historico.dart';

class Devolvido_005 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor do fundo da página
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinha o texto à esquerda
          children: [
            SizedBox(height: 1), // Espaço entre o AppBar e o primeiro botão
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // aqui também
              children: [
                Text(
                  'Problemas com autenticação  #005',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'RM931456',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ],
            ),

            SizedBox(height: 15), // espaçamento entre o texto e o card
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50, // fundo claro como estava no Card
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                ), // borda
                borderRadius: BorderRadius.circular(8), // cantos arredondados
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
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
                      Text('Data: 11/09/2024'),
                      SizedBox(width: 18),
                      Text('Período: Vespertino'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Laboratório: 4'),
                      SizedBox(width: 18),
                      Text('Andar: 3'),
                      SizedBox(width: 18),
                      Text('Máquina:  041743'),
                    ],
                  ),
                  const SizedBox(height: 15),

                  Text(
                    'Descrição do problema:',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 6),
                  const Text(
                    'Aluno não conseguiu realizar o login na sua conta da escola.',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            SizedBox(height: 12), // espaçamento entre o texto e o card
            Container(
              width: double
                  .infinity, // Faz o container ocupar toda a largura disponível
              decoration: BoxDecoration(
                color: Colors.grey.shade50, // fundo claro como estava no Card
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                ), // borda
                borderRadius: BorderRadius.circular(8), // cantos arredondados
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
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
                    'Descrição da Resolução:',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 6),
                  const Text(
                    'Redefinição da senha de login no sistema.',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ],
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
                      MaterialPageRoute(builder: (context) => Devolucoes()),
                    );
                    print('Botão de voltar pressionado');
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade400),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey.shade500,

                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text('Voltar'),
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
          ),
        ),
      ),
    );
  }
}
