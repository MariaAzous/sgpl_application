import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';
import 'package:sgpl_application/incidents/Ocorrencia_001.dart';
 
class Certificacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SGPLInfoPage(),
    );
  }
}
 
class SGPLInfoPage extends StatelessWidget {
  const SGPLInfoPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset('assets/images/logo_sgpl.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
 
              // Texto de pergunta
              const Text(
                "Deseja devolver a ocorrência?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
 
              // Botão "Sim"
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Devolucoes(),
                      ),
                    );
                  },
                  child: const Text("Sim"),
                ),
              ),
              const SizedBox(height: 12),
 
              // Botão "Não"
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ocorrencia_001(),
                      ),
                    );
                  },
                  child: const Text("Não"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}