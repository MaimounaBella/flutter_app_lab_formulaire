import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();
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
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Traitement du formulaire
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