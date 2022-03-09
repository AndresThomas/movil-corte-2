import 'package:corte_2/botones_login.dart';
import 'package:corte_2/pages/login.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
            margin: const EdgeInsets.fromLTRB(24, 50, 24, 0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/img/splash.png"),
                    fit: BoxFit.contain),
                shape: BoxShape.rectangle),
          ),
          SizedBox(height: 80),
          const BotonesREOB(
            width: 300,
            height: 48,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => const Color(0xFFFFFFFF))),
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Login()),
                );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("¿Ya tienes cuenta? ", style: TextStyle(color: Colors.black)),
            Text("Iniciar Sesion", style: TextStyle(color: Color(0xFFFC1460))),
          ],
        ),
      ),
    );
  }
}
