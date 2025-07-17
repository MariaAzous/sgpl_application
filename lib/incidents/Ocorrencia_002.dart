import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Certificacao.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';

class Ocorrencia_002 extends StatefulWidget {
  @override
  _Ocorrencia_002State createState() => _Ocorrencia_002State();
}

class _Ocorrencia_002State extends State<Ocorrencia_002> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _resolucaoController = TextEditingController();

  @override
  void dispose() {
    _resolucaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'OCORRÊNCIA',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29.0),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Falha na conexão à internet  #002',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'RM9231456',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  border: Border.all(color: Colors.green.shade200, width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'RM Professor: 987364',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Data: 09/09/2024'),
                        SizedBox(width: 18),
                        Text('Período: Vespertino'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Laboratório: 3'),
                        SizedBox(width: 18),
                        Text('Andar: 4'),
                        SizedBox(width: 18),
                        Text('Máquina: 452178'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Descrição do problema:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Aluno não consegue conectar á internet da escola.',
                      style: TextStyle(fontSize: 14),
                      softWrap: true,
                      overflow: TextOverflow.visible, // Permite quebra de linha
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  border: Border.all(color: Colors.green.shade200, width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(8),
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
                    border: InputBorder.none, // Remove a borda padrão
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                  ),
                ),
              ),

              //Botão centralizado
              SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: 160,
                  height: 35,
                  child: OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Certificacao(),
                          ),
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
                    ),
                    child: const Text('Enviar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 1.0)),
        ),
        child: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Historico()),
                    );
                    print('Histórico clicado');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.history),
                      SizedBox(width: 8),
                      Text('Historico'),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SgplApp()),
                      (route) => false,
                    );
                    print('Sair clicado');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
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
