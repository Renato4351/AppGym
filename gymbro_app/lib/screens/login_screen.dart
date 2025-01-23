import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';
import 'register_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),

            CustomTextField(controller: _emailController, label: 'E-mail', keyboardType: TextInputType.emailAddress),
            SizedBox(height: 10),

            CustomTextField(controller: _passwordController, label: 'Senha', isPassword: true),
            SizedBox(height: 20),

            PrimaryButton(
              text: 'Entrar',
              onPressed: () {
                // TODO: Implementar lógica de login
              },
            ),

            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
              child: Text('Esqueci minha senha'),
            ),

            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen())),
              child: Text('Criar conta'),
            ),
          ],
        ),
      ),
    );
  }
}