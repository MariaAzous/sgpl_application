import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Ocorrencia.dart';

class Aviso extends StatelessWidget {
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
          width: 320,

          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo + SGPL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        //width: 70,
                        height: 100,
                        child: Image.asset('assets/images/logo_sgpl.png'),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Texto explicativo
                  const Text(
                    "Classificação das ocorrências por cor",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(height: 16),

                  // Botões de cor
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(254, 102, 102, 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.shade400.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // sombra para baixo
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Emergência: PRECISA SER ATENDIDO COM A MÁXIMA PRIORIDADE",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ),
                  ),
                  const SizedBox(height: 9),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(253, 255, 128, 1),
                      borderRadius: BorderRadius.circular(6),

                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.shade400.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // sombra para baixo
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Urgência: PRECISA SER ANTEDIDO O QUANTO ANTES",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(130, 235, 113, 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.shade400.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // sombra para baixo
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Eletiva: PRECISA SER ATENDIDO",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
              // Botão de fechar (X)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ocorrencia(),
                        ), // Substitua por sua tela
                      );
                      print('Botão de fechar pressionado');
                   },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}