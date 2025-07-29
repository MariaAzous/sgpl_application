import 'package:flutter/material.dart';
import 'pages/Aviso.dart';
import 'controllers/login_controller.dart';

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

  void _tryLogin() async {
    if (_formKey.currentState!.validate()) {
      final success = await LoginController.signin(
        _rmController.text,
        _passwordController.text,
      );
      
      if (success) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Aviso()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Credenciais inválidas')),
        );
      }
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
            decoration: const BoxDecoration(
            color: Colors.black),
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
