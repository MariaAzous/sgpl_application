import 'package:flutter/material.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/incidents/Ocorrencia_001.dart';

class Devolucoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'DEVOLUÇÕES',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29.0),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // padding igual ao seu código
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quinta-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print('12/09/2024 - Teclado quebrado pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '12/09/2024 - Teclado quebrado',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print(
                    '12/09/2024 - Problemas com a fonte de alimentação pressionado',
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '12/09/2024 - Problemas com a fonte de alimentação',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Quarta-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print('11/09/2024 - Mouse não funciona pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '11/09/2024 - Mouse não funciona',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print('11/09/2024 - Problemas com autenticação pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '11/09/2024 - Problemas com autenticação',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print('11/09/2024 - Erro no VS Code pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '11/09/2024 - Erro no VS Code',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Terça-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print(
                    '10/09/2024 - Falha no compartilhamento de tela pressionado',
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10/09/2024 - Falha no compartilhamento de tela',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Segunda-Feira',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print('09/09/2024 - Falha na conexão à internet pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '09/09/2024 - Falha na conexão à internet',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                  );
                  print('09/09/2024 - Teclado quebrado pressionado');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '09/09/2024 - Teclado quebrado',
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
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
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Historico()),
                    );
                    print('Histórico clicado');
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Row(
                    children: [
                      Icon(Icons.history),
                      SizedBox(width: 8),
                      Text('Histórico'),
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
