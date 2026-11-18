import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
           TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Entrez votre email',
              ),
             obscureText: true,
           validator: (value) {
                if (value == null || !value.contains('@')) {
                  return 'Email invalide';
                }

                return null;
               
              },
            ),
           
            SizedBox(height: 20),
            TextFormField(
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Entrez votre mot de passe',
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.length < 8) {
                  return 'Mot de passe doit contenir au moins 8 caractères';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Traitement du formulaire
                  print('Formulaire valide ${_emailController.text}, ${_passwordController.text}');
                  _formKey.currentState!.reset();
                }
              },
              child: const Text('S\'inscrire'),
            ),
          ],
            
        ),
      ),
    );
  }
}