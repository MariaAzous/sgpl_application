import 'package:flutter/material.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Historico.dart';
import 'package:sgpl_application/returned_reports/Devolvido_001.dart';
import 'package:sgpl_application/returned_reports/Devolvido_002.dart';
import 'package:sgpl_application/returned_reports/Devolvido_003.dart';
import 'package:sgpl_application/returned_reports/Devolvido_004.dart';
import 'package:sgpl_application/returned_reports/Devolvido_005.dart';

class Devolucoes extends StatelessWidget {
  Widget _buildDateSection(String date, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            date,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
        ),
        ...items,
        SizedBox(height: 24),
      ],
    );
  }

  Widget _buildDevolutionItem(String title, String date, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 4,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildDateSection('Quarta-feira', [
                    _buildDevolutionItem(
                      'Problemas com autenticação',
                      '11/09/2024',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => Devolvido_005())),
                    ),
                    _buildDevolutionItem(
                      'Erro no VS Code',
                      '11/09/2024',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => Devolvido_004())),
                    ),
                  ]),
                  _buildDateSection('Terça-feira', [
                    _buildDevolutionItem(
                      'Falha no compartilhamento de tela',
                      '10/09/2024',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => Devolvido_003())),
                    ),
                  ]),
                  _buildDateSection('Segunda-feira', [
                    _buildDevolutionItem(
                      'Falha na conexão à internet',
                      '09/09/2024',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => Devolvido_002())),
                    ),
                    _buildDevolutionItem(
                      'Teclado quebrado',
                      '09/09/2024',
                      () => Navigator.push(context, MaterialPageRoute(builder: (context) => Devolvido_001())),
                    ),
                  ]),
                ],
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
