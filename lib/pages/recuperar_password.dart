import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,   
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF4F1581),
        foregroundColor: const Color(0xFFFC1560),
        title: const Text(
          'Recuperar contraseña',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Image.asset('lib/img/splash.png'),
            onPressed: () => () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
                margin: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                child: const Text('Ingresa tu email para restablecer tu contraseña',
                    style: TextStyle(fontSize: 17, color: Colors.grey))),
            const SizedBox(height: 50),
            Form(
              child: Column(
                children: [
                  const Text(
                    'Correo Electronico',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Dirección de correo',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: const Text(
                      'Ingrese su correo electronico registrado y le enviaremos un correo electronico que contiene un enlace para restablecer su contraseña',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF76AB56),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Enviar solicitud',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
    );
  }
}
