import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Certificacao.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Ocorrencia.dart';
import 'package:sgpl_application/controllers/ocorrencia_controller.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';

class OcorrenciaId extends StatefulWidget {
  final int ocorrenciaId;

  OcorrenciaId(this.ocorrenciaId); // Construtor que recebe o ID

  @override
  _OcorrenciaIdState createState() => _OcorrenciaIdState();
}

class _OcorrenciaIdState extends State<OcorrenciaId> {
  final TextEditingController _resolucaoController = TextEditingController();
  Map<String, dynamic>? ocorrenciaData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOcorrencia();
  }

  _loadOcorrencia() async {
    int id = widget.ocorrenciaId;
    final data = await OcorrenciaController.findById(id);
    setState(() {
      ocorrenciaData = data;
      isLoading = false;
    });
  }

  Color getClassificacaoColor(String classificacao) {
    switch (classificacao) {
      case 'ELETIVA':
        return Color(0xFF4CAF50); // Verde
      case 'URGENTE':
        return Color(0xFFFFC107); // Amarelo
      case 'EMERGENCIA':
        return Color(0xFFF44336); // Vermelho
      default:
        return Colors.grey; // Cor padrão
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
  void dispose() {
    _resolucaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('OCORRÊNCIA')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[50],
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header da ocorrência
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: getClassificacaoColor(ocorrenciaData?['classificacao']).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'ATIVO',
                          style: TextStyle(
                            color: getClassificacaoColor(ocorrenciaData?['classificacao']),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    ocorrenciaData?['titulo'] +
                            ' #${ocorrenciaData?['id'].toString()}' ??
                        'Carregando...',
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

            // Detalhes da ocorrência
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
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
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildDetailRow(
                    'Professor',
                    'RM ${ocorrenciaData?['professor']['rm'] ?? ''}',
                  ),
                  _buildDetailRow(
                    'Data',
                    ocorrenciaData?['dataOcorrencia'] ?? '',
                  ),
                  _buildDetailRow('Período', ocorrenciaData?['periodo'] ?? ''),
                  _buildDetailRow(
                    'Ambiente',
                    ocorrenciaData?['ambiente']['nome'] ?? '',
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Descrição do Problema',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
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

            // Campo de resolução
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
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
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _resolucaoController,
                    maxLines: 4,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: 'Descreva como o problema foi resolvido.',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xFF4CAF50),
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Botão de enviar
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
  ScaffoldMessenger.of(context).clearSnackBars();
  final resolucao = _resolucaoController.text.trim();

  if (resolucao.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Por favor, preencha a descrição da resolução.'),
        backgroundColor: Colors.red[400],
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    return;
  }

  // Exibe o popup de confirmação
  final bool? confirmacao = await showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_sgpl.png',
              height: 60,
            ),
          ],
        ),
        content: Text(
          'Deseja devolver a ocorrência?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, true); // Confirma
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              minimumSize: Size(100, 35),
            ),
            child: Text('Sim', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false); // Cancela
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              minimumSize: Size(100, 35),
            ),
            child: Text('Não', style: TextStyle(color: Colors.black)),
          ),
        ],
      );
    },
  );

  // Se o usuário confirmou
  if (confirmacao == true) {
    await OcorrenciaController.resolverOcorrencia(
        widget.ocorrenciaId, resolucao);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Ocorrência resolvida com sucesso!'),
        backgroundColor: Colors.green[400],
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // Volta para tela de Ocorrências (ou navega para onde quiser)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Devolucoes()),
    );
  }
},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4CAF50),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Finalizar Ocorrência',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
                      MaterialPageRoute(builder: (context) => Ocorrencia()),
                    );
                    print('Ocorrências clicado');
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
                      Text('Ocorrências'),
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
