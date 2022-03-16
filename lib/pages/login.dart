import 'package:corte_2/pages/recuperar_password.dart';
import 'package:corte_2/pages/registro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _value = false;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF4F1581),
        foregroundColor: const Color(0xFFFC1560),
        title: const Text(
          'Iniciar sesión',
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
                child: const Text('Inicia sesión con tu cuenta para continuar',
                    style: TextStyle(fontSize: 17, color: Colors.grey))),
            const SizedBox(height: 50),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width-170),
                    child: const Text(
                      'Correo Electronico',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
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
                  const SizedBox(height: 25),
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width-130),
                    child: const Text(
                      'Contraseña',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: 'Contraseña',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () => setState(
                                () => _passwordVisible = !_passwordVisible),
                          )),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'La contraseña es obligatoria';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xFFFFFFFF))),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPassword(),
                          ));
                    },
                    child: Text('¿Has olvidado tu contraseña?',
                        style: TextStyle(color: Color(0xFFFC1460)))),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            SizedBox(
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
                  'Ingresar',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => const Color(0xFFFFFFFF))),
        onPressed: () {
          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistroView(),
                          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("¿Todavia no tienes una cuenta? ", style: TextStyle(color: Colors.black)),
            Text("Registrate", style: TextStyle(color: Color(0xFFFC1460))),
          ],
        ),
      ),
    );
  }
}
