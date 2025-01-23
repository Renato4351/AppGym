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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nova Senha')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextField(controller: _codeController, label: 'Código de Verificação'),
            SizedBox(height: 10),

            CustomTextField(controller: _newPasswordController, label: 'Nova Senha', isPassword: true),
            SizedBox(height: 10),

            CustomTextField(controller: _newPasswordConfirmController, label: 'Confirmar Nova Senha', isPassword: true),
            SizedBox(height: 10),
            
            PrimaryButton(
              text: 'Confirmar',
              onPressed: () {
                // TODO: Implementar lógica de redefinição de senha
              },
            ),
          ],
        ),
      ),
    );
  }
}