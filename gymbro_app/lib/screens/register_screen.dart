import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Center(  // Centraliza o conteúdo
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Centraliza no eixo vertical
            crossAxisAlignment: CrossAxisAlignment.center,  // Centraliza no eixo horizontal
            children: [
              Text('Cadastro', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              // Caixa de E-mail com bordas e sombra
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
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: InputBorder.none,  // Retira a borda padrão do TextField
                    contentPadding: EdgeInsets.all(10),  // Ajusta o preenchimento interno
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Caixa de Senha com bordas e sombra
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
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: InputBorder.none,  // Retira a borda padrão do TextField
                    contentPadding: EdgeInsets.all(10),  // Ajusta o preenchimento interno
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),

              // Botão "Cadastrar"
              Container(
                width: 300,  // Largura ajustada
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implementar cadastro
                  },
                  child: Text('Cadastrar'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.blue,  // Substituindo 'primary' por 'backgroundColor'
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
