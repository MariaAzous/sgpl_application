import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Certificacao.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';

class Ocorrencia_003 extends StatefulWidget {
  @override
  _Ocorrencia_003State createState() => _Ocorrencia_003State();
}

class _Ocorrencia_003State extends State<Ocorrencia_003> {
  final TextEditingController _resolucaoController = TextEditingController();

  @override
  void dispose() {
    _resolucaoController.dispose(); // evita vazamento de memória
    super.dispose();
  }

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
                  'Falha no compartilhamento de tela #003',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'RM974568',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ],
            ),

            SizedBox(height: 15), // espaçamento entre o texto e o card
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50, // fundo claro como estava no Card
                border: Border.all(
                  color: Colors.red.shade200,
                  width: 1,
                ), // borda
                borderRadius: BorderRadius.circular(8), // cantos arredondados
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.red.withOpacity(0.5),
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
                      Text('Data: 10/09/2024'),
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
                    'Não foi possível compartilhar a tela com os alunos.',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    overflow: TextOverflow.visible, // permite quebra de linha
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            SizedBox(height: 16), // Espaço entre os cards

            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                border: Border.all(color: Colors.red.shade200, width: 1),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.red.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // sombra para baixo
                  ),
                ],
              ),

              child: TextFormField(
                controller: _resolucaoController,
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor, preencha a descrição da resolução.';
                  }
                  return null;
                },
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
                      color: Colors.red.shade200,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.red.shade200,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.red.shade200,
                      width: 1,
                    ),
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
                    // Remove qualquer snackbar anterior antes de exibir um novo
                    ScaffoldMessenger.of(context).clearSnackBars();
                    // Verifica se o campo está vazio manualmente
                    if (_resolucaoController.text.trim().isEmpty) {
                      // Exibe a mesma mensagem do main.dart
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Por favor, preencha a descrição da resolução.',
                          ),
                          backgroundColor: Colors.grey.shade500,
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Certificacao()),
                      );
                      print('Botão de enviar pressionado');
                    }
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
                  child: const Text('Enviar'),
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
                    ScaffoldMessenger.of(
                      context,
                    ).clearSnackBars(); // <- limpa o SnackBar
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
                    ScaffoldMessenger.of(
                      context,
                    ).clearSnackBars(); // <- limpa o SnackBar
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
