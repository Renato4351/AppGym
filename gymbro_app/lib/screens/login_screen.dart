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
      body: Center(  // Centraliza todo o conteúdo
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Centraliza no eixo vertical
            crossAxisAlignment: CrossAxisAlignment.center,  // Centraliza no eixo horizontal
            children: [
              Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              // Caixa de E-mail com relevo e largura reduzida
              Container(
                width: 300,  // Largura ajustada
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CustomTextField(
                  controller: _emailController,
                  label: 'E-mail',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 10),

              // Caixa de Senha com relevo e largura reduzida
              Container(
                width: 300,  // Largura ajustada
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CustomTextField(
                  controller: _passwordController,
                  label: 'Senha',
                  isPassword: true,
                ),
              ),
              SizedBox(height: 20),

              // Botões "Criar conta" e "Entrar" lado a lado com distância menor
              Row(
                mainAxisSize: MainAxisSize.min, // Deixa os botões menores
                children: [
                  // Botão "Criar conta" agora à esquerda
                  Container(
                    width: 150,  // Largura ajustada
                    child: PrimaryButton(
                      text: 'Criar conta',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                      },
                    ),
                  ),

                  SizedBox(width: 10),  // Pequeno espaçamento entre os botões

                  // Botão "Entrar"
                  PrimaryButton(
                    text: 'Entrar',
                    onPressed: () {
                      // TODO: Implementar lógica de login
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Botão "Esqueci minha senha" agora abaixo dos botões "Criar conta" e "Entrar"
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
                child: Text('Esqueci minha senha'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
