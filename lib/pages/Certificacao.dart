import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';

class Certificacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SGPLInfoPage();
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
          width: 320,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/logo_sgpl.png'),
                  ),
                ],
              ),

              const SizedBox(height: 12),
              // Texto de pergunta
              const Text(
                "Deseja devolver a ocorrência?",
                textAlign: TextAlign.center,

                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 24),

              // Botão "Sim"
              SizedBox(
                width: 120, // largura do botão
                height: 35, // mesma altura do botão "Enviar"
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Devolucoes()),
                    );
                    print('Ocorrência devolvida');
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade400),
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

                  child: const Text("Sim"),
                ),
              ),
              const SizedBox(height: 12),

              // Botão "Não"
              SizedBox(
                width: 120, // largura do botão
                height: 35, // mesma altura
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Usuário não devolveu a ocorrência');
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade400),
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
