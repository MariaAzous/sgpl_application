import 'package:flutter/material.dart';
import 'pages/Aviso.dart'; // Importe página Aviso

void main() {
  runApp(SgplApp());
}

class SgplApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGPL',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _rmController = TextEditingController();
  final _passwordController = TextEditingController();

  void _tryLogin() {
    if (_formKey.currentState!.validate()) {
      // Redireciona para a tela Home
      Navigator.push(context, MaterialPageRoute(builder: (context) => Aviso()));
      print('Usuario entrou com RM: ${_rmController.text}');
    } else {
      //Mostrar Snackbar de erro
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, preencha todos os campos')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            width: 320,
            padding: const EdgeInsets.symmetric(vertical: 40),
            decoration: const BoxDecoration(color: Colors.black),
            child: Container(
              width: 240,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/logo_sgpl.png'),
                  ),
                  TextFormField(
                    controller: _rmController,
                    decoration: InputDecoration(labelText: 'Rm do Usuário'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe o rm';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Senha'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe a senha';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 120, // mesma largura do botão "Sim"
                    height: 35, // mesma altura
                    child: OutlinedButton(
                      onPressed: _tryLogin,
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
                      child: const Text('Entrar'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
