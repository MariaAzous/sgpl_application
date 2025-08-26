import 'package:flutter/material.dart';
import 'package:sgpl_application/pages/Devolucao.dart';

class CertificacaoPopup extends StatelessWidget {
  final VoidCallback onConfirm;

  const CertificacaoPopup({Key? key, required this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/logo_sgpl.png'),
            ),

            const SizedBox(height: 12),

            // Texto da pergunta
            const Text(
              "Deseja devolver a ocorrência?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),

            const SizedBox(height: 24),

            // Botão "Sim"
            SizedBox(
              width: 120,
              height: 35,
              child: OutlinedButton(
                onPressed: () {
                  onConfirm();
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Devolucao()),
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
              width: 120,
              height: 35,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
    );
  }
}
