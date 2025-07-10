import 'package:flutter/material.dart';
<<<<<<< HEAD
// ignore: unused_import
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';
import 'package:sgpl_application/incidents/Ocorrencia_001.dart';

=======
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';
import 'package:sgpl_application/incidents/Ocorrencia_001.dart';
 
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
class Certificacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SGPLInfoPage(),
    );
  }
}
<<<<<<< HEAD

class SGPLInfoPage extends StatelessWidget {
  const SGPLInfoPage({super.key});

=======
 
class SGPLInfoPage extends StatelessWidget {
  const SGPLInfoPage({super.key});
 
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
<<<<<<< HEAD
          width: 320,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
=======
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
<<<<<<< HEAD
              // Logo
=======
              // Logo 
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
<<<<<<< HEAD
                    height: 100,
=======
                    height: 50,
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                    child: Image.asset('assets/images/logo_sgpl.png'),
                  ),
                ],
              ),
<<<<<<< HEAD
              const SizedBox(height: 12),

=======
              const SizedBox(height: 20),
 
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
              // Texto de pergunta
              const Text(
                "Deseja devolver a ocorrência?",
                textAlign: TextAlign.center,
<<<<<<< HEAD
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 24),

              // Botão "Sim"
              SizedBox(
                width: 120, // largura do botão
                height: 35, // mesma altura do botão "Enviar"
=======
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
 
              // Botão "Sim"
              SizedBox(
                width: double.infinity,
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
<<<<<<< HEAD
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
=======
                      MaterialPageRoute(
                        builder: (context) => Devolucoes(),
                      ),
                    );
                  },
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                  child: const Text("Sim"),
                ),
              ),
              const SizedBox(height: 12),
<<<<<<< HEAD

              // Botão "Não"
              SizedBox(
                width: 120, // largura do botão
                height: 35, // mesma altura
=======
 
              // Botão "Não"
              SizedBox(
                width: double.infinity,
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
<<<<<<< HEAD
                      MaterialPageRoute(builder: (context) => Ocorrencia_001()),
                    );
                    print('Ocorrência não devolvida');
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
=======
                      MaterialPageRoute(
                        builder: (context) => Ocorrencia_001(),
                      ),
                    );
                  },
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
                  child: const Text("Não"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 9746b422ca9b7fc95f7ba4159c5d7b58e6c68ce6
