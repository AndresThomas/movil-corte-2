import 'package:corte_2/pages/registro.dart';
import 'package:flutter/material.dart';

class BotonesREOB extends StatefulWidget {
  final double width;
  final double height;
  const BotonesREOB({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  _BotonesREOBState createState() => _BotonesREOBState();
}

class _BotonesREOBState extends State<BotonesREOB>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0,
      runSpacing: 25,
      children: [
        ConstrainedBox(
          constraints:
              BoxConstraints.tightFor(width: 300, height: widget.height),
          child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor:
                    //#3069F5
                    MaterialStateProperty.all(const Color(0xFF3069F5)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
              },
              icon:
                  // const ImageIcon(
                  //   AssetImage("lib/img/google.png"),
                  Container(
                      padding: const EdgeInsets.all(9),
                      child: Image.asset("lib/img/google.png")),
              label: const Text('Continuar con google')),
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              width: widget.width, height: widget.height),
          child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF324FA5)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
              },
              icon: const Icon(Icons.facebook),
              label: const Text('Continuar con facebook')),
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              width: widget.width, height: widget.height),
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFFFFFFFF),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Color(0xFF64686F))),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  RegistroView()),
                );
            },
            icon: const Icon(
              Icons.email_outlined,
              color: Colors.black38,
            ),
            label: const Text(
              'Registrarse con Email',
              style: TextStyle(color: Colors.black38),
            ),
          ),
        ),
        SizedBox(height: 70),
        ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: widget.width, height: widget.height),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith((states) => 0),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xFFFFFFFF))),
                onPressed: () {},
                child: const Text(
                  "Entrar como invitado",
                  style: TextStyle(color: Color(0xFFFC1460)),
                ))),
        ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: widget.width, height: widget.height),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith((states) => 0),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xFFFFFFFF))),
                onPressed: () {},
                child: const Text("Entrar como vendedor",
                    style: TextStyle(color: Color(0xFF76AB56))))),
      ],
    );
  }
}
