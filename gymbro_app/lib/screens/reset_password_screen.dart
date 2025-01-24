import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _newPasswordConfirmController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _codeController.dispose();
    _newPasswordController.dispose();
    _newPasswordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nova Senha')),
      body: Center(  // Centraliza o conteúdo
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Centraliza no eixo vertical
            crossAxisAlignment: CrossAxisAlignment.center,  // Centraliza no eixo horizontal
            children: [
              Text('Redefinir Senha', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              // Caixa de Código com bordas e sombra
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
                child: TextField(
                  controller: _codeController,
                  decoration: InputDecoration(
                    labelText: 'Código de Verificação',
                    border: InputBorder.none,  // Retira a borda padrão do TextField
                    contentPadding: EdgeInsets.all(10),  // Ajusta o preenchimento interno
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Caixa de Nova Senha com bordas e sombra
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
                child: TextField(
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Nova Senha',
                    border: InputBorder.none,  // Retira a borda padrão do TextField
                    contentPadding: EdgeInsets.all(10),  // Ajusta o preenchimento interno
                  ),
                  obscureText: _obscurePassword,
                ),
              ),
              SizedBox(height: 10),

              // Caixa de Confirmar Senha com bordas e sombra
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
                child: TextField(
                  controller: _newPasswordConfirmController,
                  decoration: InputDecoration(
                    labelText: 'Confirmar Nova Senha',
                    border: InputBorder.none,  // Retira a borda padrão do TextField
                    contentPadding: EdgeInsets.all(10),  // Ajusta o preenchimento interno
                  ),
                  obscureText: _obscurePassword,
                ),
              ),
              SizedBox(height: 20),

              // Botão Confirmar
              Container(
                width: 300,  // Largura ajustada
                child: ElevatedButton(
                  onPressed: () {
                    if (_newPasswordController.text == _newPasswordConfirmController.text) {
                      // Lógica para redefinir a senha
                      // TODO: Chamar o método para redefinir a senha
                    } else {
                      // Exibir mensagem de erro se as senhas não coincidirem
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('As senhas não coincidem. Tente novamente.')),
                      );
                    }
                  },
                  child: Text('Confirmar'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.blue,  // Cor do botão
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
